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



some used:
rails g model Todo title:string created_by:string
rails g model Item name:string done:boolean todo:references


to study or upgrade: (shoulda_matchers)

http://matchers.shoulda.io
https://github.com/thoughtbot/shoulda-matchers
http://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html


some classes to make:

eMarker: (economic marker.)(translada a currencies)
date: date value: decimal desc: string type currency_id:integer references
changeVSlast: decimal

currencies:
 name: string 
 simbol:string 
 alias:string 
 history_id: integer reference: currency_value_id
 formal?: boolean #eggs, milk or dolar / informal, formal.

currency_value:
 currency_id: integer reference: currency 
 sample_date: date 
 valueVs: decimal 
 VsCurrency_id: integer


transaccion_ description currency_id: reference category_id: integer XtimesSalary_ decimal



soon, need to destroy the rspec, and make it work or wont progress at al...

could take the banks from the database at work.

# omgosh at last rspec is working, with zombies and useles but working
rspec spec/lib/zombie_spec.rb
`https://www.youtube.com/watch?v=Dj19O9kLK6w` # thats the tutorial today
