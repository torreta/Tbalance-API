here i will put notes of anyting i find useful, or just worth taking in account, to myself o something

i started this project with cloud9. that way i didnt have to configure too much anyting

started the repo with this command, that way it creates a rails project just using the barely minimun for an api
but with all the benefits rails provides by default.

 rails new Tbalance-api --api -T
 
 
 got this tuto to "follow" as a kind of guide
 
https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one

 comments on this gems that i first time i useful
 
- rspec-rails - Testing framework.
  `rails generate rspec:install` 

- factory_girl_rails - A fixtures replacement with a more straightforward syntax. You'll see.
- shoulda_matchers - Provides RSpec with additional matchers.
- database_cleaner - You guessed it! It literally cleans our test database to ensure a clean state in each test suite.
- faker - A library for generating fake data. We'll use this to generate test data.


here is the repo where i found the most tips to continue with the test driven app
 https://github.com/akabiru/todos-api
 
 custom vagrant box.
 https://railsbox.io/boxes/6ad8d711f442
 
 
 we are trying to adapt the tutorial, so we use 2 atributes for another thing
 
 
Some ideas for future implementation. 

currencies: name, value, simbol, date

Bank: name, rif

Task: name, created by 
 
Suggestion: description:string created_by:string


paginas de ayuda y apis externas:
https://www.venezuelaecon.com/
https://github.com/btcven/api
http://api.bitcoinvenezuela.com/DolarToday.php?json=yes
http://api.bitcoinvenezuela.com/historical/

make class and design


some used:
rails g model Todo title:string created_by:string
rails g model Item name:string done:boolean todo:references


to study or upgrade: (shoulda_matchers)

http://matchers.shoulda.io
https://github.com/thoughtbot/shoulda-matchers
http://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html


some classes to make:

eMarker: (economic marker.)(translada a currencies)
date: date 
value: decimal 
desc: string type 
currency_id:integer references: currency
changeVSlast: decimal

currencies:
 name: string 
 simbol:string 
 history_id: integer reference: currency_value_id
 type_id #eggs, milk or dolar / informal, formal.

rails g model Currency name:string simbol:string  type_id:integer

currency_type:
name:strig //formal, informal etc
marcador inflacion: boolean

rails g model CurrencyType name:string marker:boolean

currency_value:
 currency_id: integer reference: currency 
 sample_date: date 
 toBuy: decimal 
 VsCurrency_id: integer reference: currency
 source_id: integer  reference: Source
 

currencies_alias:
alias: string
currency_id: integer reference: currency 

rails g model CurrencyAlias name:string currency_id:integer references :currency 


transaccion_ description currency_id: reference category_id: integer XtimesSalary_ decimal



soon, need to destroy the rspec, and make it work or wont progress at al...

could take the banks from the database at work.

# omgosh at last rspec is working, with zombies and useles but working
rspec spec/lib/zombie_spec.rb
`https://www.youtube.com/watch?v=Dj19O9kLK6w` # thats the tutorial today

Test Driven Development:
`https://www.youtube.com/watch?v=HhwElTL-mdI`

# at last repaired the error of rspec not working form this command
bundle exec rspec

run rails server
`rails s -p $PORT -b $IP`

to follow but not to the letter:
https://www.youtube.com/watch?v=QIC9gorj-qk

hay que configurar capybara: (en realidad soy un API, es necessario?)
https://github.com/teamcapybara/capybara#setup


tableless models:
http://railscasts.com/episodes/193-tableless-model?autoplay=true

look for new gems here:
`https://rubygems.org/`

remember to add new features  (make the file.)
"i want to <make something> in order 
to <fullfill an necesity> 
so <we can get an objective>"


on http site availeability:
http://ruby-doc.org/stdlib-2.4.1/libdoc/net/http/rdoc/index.html

valid hash?
http://stackoverflow.com/questions/39705580/how-to-check-if-a-string-contain-valid-hash

values on hash:
http://stackoverflow.com/questions/5348449/get-a-particular-key-value-from-json-in-ruby

puedes hacer assert si el tamaño del hash ha cambiado por la cantidad de elementos que trae
hazh.size? quizas?


DateTime and Time difference parsing:
http://stackoverflow.com/questions/7816365/how-to-convert-a-unix-timestamp-seconds-since-epoch-to-ruby-datetime

add luck to stadistics:

read:
http://organofcorti.blogspot.com/2015/07/faq-bitcoin-mining-and-luck-statistic.html

Luck = mean(expected shares per round / actual shares per round)
 Luck statistic = mean(actual shares per round / expected shares per round) 
i.e. Luck = 1/Luck statistic


tools? (must eval)

https://www.onlinecharttool.com/graph
http://www.chartjs.org/
https://thenextweb.com/dd/2015/06/12/20-best-javascript-chart-libraries/
http://gionkunz.github.io/chartist-js/
http://www.fusioncharts.com/

kinda out of ideas tonight, so... just make a class or a vagrant file?

command:

rake db:drop; rake db:create; rake db:migrate; rake db:seed;

go and see react.js forums for the frontend development,
since now we should produce diagrams to have a better visualization 
of what i should be doing... 

look for graphications tools for react-native, since the app
is going to be made there. 

check some bitcoin tools.

Hashflare

Get some wallets

Understand Ether coin

tesis break?


<!-------------------------------------------------------------->
already made tables

source:
 name: string // API, Calculation, exchange_rate, etc

rails g model Source name:string


rails g model CurrencyType name:string marker:boolean

http://mundoptc.com.ve/tema-Minar-ethereum-desde-0-latino-America-2016


tables:

Bancos

Cuentas

tipo de cuenta

ofuscar cuenta funcion (ofusca parcialmente un numero de cuenta)

sacado el calculo inversion bitcoin, 

13/05/2018	dia en que empieza a auto sostenerse.
216,00     inversion interna
1800       GH/s
1,2        ganancia diaria
1 dia en incrementar 40 dias de halt y recupero... y sigo

ROI in about 7 months

seems like hashflare, yes. it made a difference, 330 gh/s

thesis time tonight, leaving that aside, log saving for today

no thesis but, doing at best a lot of things

TEamviewer + bluestack combo always helpfull

c9.io to test

got to learn filters and validators for rails.
http://guides.rubyonrails.org/action_controller_overview.html

make a table for special dates than marks tendencies and events wto have
them added on the graphics to analice behavior

example: bitcoin bifurcation, constituyente, black friday.

i really need discipline and concious practice

maybe i should use hashflare libraries on graphication?

