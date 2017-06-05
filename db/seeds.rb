# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Source.create([
 { name: 'DolarToday' }, 
 { name: 'Btcven' }, 
 { name: 'bitcoinvenezuela' },  
 { name: 'System' },  
 { name: 'Other' },  
 { name: 'Inserted' }
])


CurrencyType.create([
 {name: 'digital', marker: true},
 {name: 'formal', marker: true},
 {name: 'cryptocurrency', marker: true},
 {name: 'observable inflation', marker: false},
 {name: 'transaction', marker: false}
])
