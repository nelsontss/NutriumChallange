# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ruby 2.7.1
  
* System dependencies
  materialize css
  jquery
  
* Database creation and initialization
  Database user is nutrium_dev
  Database password is nutriumpass
  A dump of my development database is in app/db/db_dump.sql, make sure you run import that into your postgres.
  
* Deployment instructions
  rails s -b 0.0.0.0 -p 8080

* Functionalities
  The database contains 2 nutritionists, 1 clinic, and each nutritionist cointains 2 types of appointments.
  
  After the deployment, we can access the search page at http://0.0.0.0:8080/nutritionist/search.
  
  It should appear both nutritionists with information about their clinics, and ther appointments.
  
  You can filter the search in the search bar.

