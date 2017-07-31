# seed data user 1
# <editor-fold
u = User.create({
        name:"Anna",
        email:"manna@gmill.com",
        password:"123"
      })

t = u.trips.create({
        duration:7,
        pax:3,
        budget: 5000
      })

i = t.itineraries.create({})

p = i.places.create({
        name:"Jurong",
        lat:1.3329,
        lng:103.7436,
        price_pax: 15,
        duration: 4
    })

p.categories.create({name:"fun"})
# </editor-fold>

# seed data user 2
# <editor-fold
u2 = User.create({
        name:"Jovil",
        email:"kilonom@fire.org",
        password:"abc"
      })

t2 = u2.trips.create({
        duration:5,
        pax:9,
        budget: 3000
      })

i2 = t2.itineraries.create({})

p2 = i2.places.create({
        name:"Kamchatka",
        lat:56.1327,
        lng:159.5314,
        price_pax: 1500,
        duration: 250
    })

p2.categories.create({name:"adventure"})

# seed data user 3
# <editor-fold
u3 = User.create({
        name:"mike",
        email:"mike@fire.org",
        password:"cba"
      })

t3 = u3.trips.create({
        duration:5,
        pax:9,
        budget: 3000
      })

i3 = t3.itineraries.create({})

p3 = i3.places.create({
        name:"Kamchatka",
        lat:56.1327,
        lng:159.5314,
        price_pax: 1500,
        duration: 250
    })

p3.categories.create({name:"adventure"})

# seed data user 4
# <editor-fold
u4 = User.create({
        name:"john",
        email:"john@fire.org",
        password:"joh"
      })

t4 = u4.trips.create({
        duration:1,
        pax:4,
        budget: 500
      })

i4 = t4.itineraries.create({})

p4 = i4.places.create({
        name:"National Museum of Singapore",
        lat:1.2967,
        lng:103.8486,
        price_pax: 500,
        duration: 1
    })

p4.categories.create({name:"learning"})







# </editor-fold>
# l = Location.create({ name:"Spacemob", lat:1.3078123, long:103.8316541})

# start_date:DateTime.new(DateTime.now.year,DateTime.now.month,DateTime.now.day,15,0,0,'+08:00'),
# end_date:DateTime.new(DateTime.now.year,DateTime.now.month,DateTime.now.day+7,9,0,0,'+08:00'),
