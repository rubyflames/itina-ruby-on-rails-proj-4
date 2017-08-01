# Progress Log
This is a log of the progress for this project.

## Activity for 24-July-2017

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

## Activity for 25-July-2017

  * ERD reviewed and revised to add 2 models: itinerary and category.
  * Join Tables established for itinerary_place and place_category.

## Just run
1. db:create
2. db:migrate
3. db:seed
4. rails s
5. navigate to users/id

### To access nested objects/properties of user:
Under users_controller, towards the bottom of file,
```ruby
  def set_user
    @user = User.includes(:trips).find(params[:id])
  end
```
**Set**: `.includes(:trips)` between `User` and `find()`

Then in the method `show` (processes queries & params passed in the **url**),
add:
```ruby
def show
  render :json => @user, :include => {
    :trips => {
      :include => {
        :itineraries => {
          :include => {
            :places => {
              :include => :categories
            }
          }
        }
      }
    }
  }
end
```

#### How about in index? How to include relations in `Model.all`?
**Actually,**
```ruby
# to see all places
def index
  @places = Place.all
  render json: @places, :include => :categories
end

# to see by parameters
def show  
  render json: @category, :include => :places
end
# dont need
# def set_user
#   @user = User.includes(:trips).find(params[:id])
# end
```


## Result:
**URL**: http://localhost:3000/users/2
```json
// 20170726024327
// http://localhost:3000/users/2

{
  "id": 2,
  "name": "Jovil",
  "email": "kilonom@fire.org",
  "password": "abc",
  "created_at": "2017-07-25T18:13:57.088Z",
  "updated_at": "2017-07-25T18:13:57.088Z",
  "trips": [
    {
      "id": 2,
      "duration": 5,
      "pax": 9,
      "budget": 3000.0,
      "user_id": 2,
      "created_at": "2017-07-25T18:13:57.109Z",
      "updated_at": "2017-07-25T18:13:57.109Z",
      "itineraries": [
        {
          "id": 2,
          "trip_id": 2,
          "created_at": "2017-07-25T18:13:57.127Z",
          "updated_at": "2017-07-25T18:13:57.127Z",
          "places": [
            {
              "id": 2,
              "name": "Kamchatka",
              "lat": "56.1327",
              "lng": "159.5314",
              "price_pax": 1500.0,
              "duration": 250,
              "created_at": "2017-07-25T18:13:57.150Z",
              "updated_at": "2017-07-25T18:13:57.150Z",
              "categories": [
                {
                  "id": 2,
                  "name": "adventure",
                  "created_at": "2017-07-25T18:13:57.172Z",
                  "updated_at": "2017-07-25T18:13:57.172Z"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

## Activity for 26-July-2017

* Tested revised backend models for user via POSTMAN's POST and GET - both working

* Clarified that join tables cannot be acccessible via Postman. Active Records commands used in rails console to view relationships between all tables.
