# Progress Log
This is a log of the progress for this project.

##Activity for 24-July-2017

* Tested backend models for user via POSTMAN's POST and GET - both working

* Created relationship between User model and Trip model where one User item has many trips:

  At terminal:
  ```
  rails g migration AddUserToTrip user:belongs_to
  ```
  this will create a new file in db/migrate folder ("xxxxxx_add_user_to_trip.rb")

  and then

  ```
  rails db:migrate
  ```
  then, manually edit models/user.rb with "has_many:trip"

  Check PGADMIN, and a new column for user_id should be created in the Trip model.
