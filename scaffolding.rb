# model controllers generation

rails g scaffold User name email password

rails g scaffold Trip duration:integer pax:integer budget:float user:references

rails g scaffold Itinerary trip:references

rails g scaffold Place name lat:float lng:float price_pax:float duration:integer

rails g scaffold Category name

##################################################################


# many to many joins

rails g migration CreateJoinTable_itinerary_place

rails g migration CreateJoinTable_place_category
