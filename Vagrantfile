# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version '>= 1.5'

def require_plugins(plugins = {})
  needs_restart = false
  plugins.each do |plugin, version|
    next if Vagrant.has_plugin?(plugin)
    cmd =
      [
        'vagrant plugin install',
        plugin
      ]
    cmd << "--plugin-version #{version}" if version
    system(cmd.join(' ')) || exit!
    needs_restart = true
  end
  exit system('vagrant', *ARGV) if needs_restart
end

require_plugins \
  'vagrant-bindfs' => '0.3.2'

def ansible_installed?
  exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
  ENV['PATH'].split(File::PATH_SEPARATOR).any? do |p|
    exts.any? do |ext|
      full_path = File.join(p, "ansible-playbook#{ext}")
      File.executable?(full_path) && File.file?(full_path)
    end
  end
end


Vagrant.configure('2') do |config|
  config.vm.provider :virtualbox do |vb, override|
    vb.memory = 2048
    vb.cpus = 2

    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.define 'Tbalance-API' do |machine|
    machine.vm.hostname = 'localhost'
    machine.vm.network 'forwarded_port', :guest => 80, :host => 8080, :auto_correct => true
    machine.vm.network 'forwarded_port', :guest => 443, :host => 8081, :auto_correct => true

    machine.vm.box = 'ubuntu/trusty64'

    machine.vm.network 'private_network', ip: '192.168.0.77'
    machine.vm.synced_folder '../../', '/Tbalance-API'
    machine.vm.synced_folder '../ansible', '/ansible'
  end


  config.ssh.forward_agent = true

  if ansible_installed?
    config.vm.provision 'ansible' do |ansible|
      ansible.playbook = '../ansible/site.yml'
      ansible.sudo = true
      ansible.groups = {
        'application' => %w(Tbalance-API),
        'vm' => %w(Tbalance-API),
        'mysql' => %w(Tbalance-API),
        'sidekiq' => %w(Tbalance-API),
        'development:children' => %w(application vm mysql sidekiq),
      }
      ansible.tags = ENV['TAGS']
      ansible.raw_arguments = ENV['ANSIBLE_ARGS']
    end
  else
    Dir['../shell/*.sh'].each do |script|
      config.vm.provision 'shell', :path => script, :privileged => false, :args => ENV['ANSIBLE_ARGS']
    end
  end
end
