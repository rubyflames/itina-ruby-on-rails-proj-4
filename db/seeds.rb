place_list = [
  ["Singapore Botanic Gardens","1 Cluny Rd, Singapore 259569 (Nearest MRT: Botanic Gardens MRT)",1.315102,103.816192,0,4],
  ["Singapore Zoo","80 Mandai Lake Road Singapore 729826 (Nearest MRT: Ang Mo Kio or Choa Chu Kang MRT)",1.404984,103.790549,33,3],
  ["Marina Bay Sands","10 Bayfront Avenue, Singapore 018956 (Nearest MRT: Bayfront MRT)",1.286196,103.859277,30,8],
  ["Resorts World Sentosa","8 Sentosa Gateway, 098269",1.256752,103.820331,30,8],
  ["Universal Studios Singapore","8 Sentosa Gateway, 098269",1.254058,103.823805,76,8],
  ["Jurong Bird Park","2 Jurong Hill Singapore 628925 (Nearest MRT: Boon Lay MRT)",1.318071,103.706818,29,3],
  ["Night Safari","80 Mandai Lake Road Singapore 729826 (Nearest MRT: Ang Mo Kio or Choa Chu Kang MRT)",1.402205,103.788056,45,3],
  ["iFly Singapore","43 Siloso Beach Walk, #01-01 Sentosa Island, Singapore 099010",1.252107,103.817505,119,2],
  ["Singapore Flyer","30 Raffles Avenue Singapore 039803 (Free shuttle bus from 25 Scotts Road DFS Galleria @ Scottswalk, Mezzanine Floor Singapore 228220 (kindly register at JTB Orchard Lounge))",1.289530,103.863248,33,0.5],
  ["MacRitchie Nature Trail & Tree Top Walk","601 Island Club Rd, Singapore 578775",1.357326,103.812471,0,3],
  ["Lee Kong Chian Natural History Museum","2 Conservatory Drive, Singapore 117377 (Nearest MRT: Kent Ridge MRT)",1.301405,103.773645,20,1.5],
  ["Gardens By The Bay","18 Marina Gardens Dr, Singapore 018953 (Nearest MRT: Bayfront MRT)",1.281301,103.864418,0,4],
  ["Buddha Tooth Relic Temple and Museum","288 South Bridge Road Singapore 058840 (Nearest MRT: Chinatown MRT)",1.281470,103.844267,0,1],
  ["Haw Par Villa (Tiger Balm Garden)","262 Pasir Panjang Road Singapore 118628 (Nearest MRT: Haw Par Villa MRT)",1.285506,103.783144,0,1],
  ["Lau Pa Sat Festival Pavilion","18 Raffles Quay, Singapore 048582 (Nearest MRT: Downtown MRT & Raffles Place MRT)",1.280725,103.850442,0,1.5],
  ["Newton Hawker Centre","500 Clemenceau Ave North, Singapore 229495 (Nearest MRT: Newton MRT)",1.311944,103.839444,15,1.5],
  ["Vivo City","1 Harbourfront Walk, Singapore 098585 (Nearest MRT: Harbourfront MRT)",1.265030,103.822147,30,4],
  ["Science Centre Singapore","15 Science Centre Road Singapore 609081 (Nearest MRT: Jurong East MRT)",1.333122,103.735652,12,2],
  ["Snow City","21 Jurong Town Hall Road (Nearest MRT: Jurong East MRT)",1.333122,103.735654,18,1],
  ["Chinese Garden","1 Chinese Garden Singapore 619795 (Nearest MRT: Chinese Garden MRT)",1.338987,103.729753,0,3]
]

place_list.each do |name, address, lat, lng, price_pax, duration|
  p = Place.create( name: name, address: address, lat: lat, lng: lng, price_pax: price_pax, duration: duration )

  Category.new({name: "Fun"});

  p.categories << Category.new({name: "Food"});
  p.categories << Category.new({name: "Nightlife"});
  p.categories << Category.new({name: "Tourism"});
  p.categories << Category.new({name: "Gaming"});
  p.categories << Category.new({name: "Outdoors"});
  p.categories << Category.new({name: "Sightseeing"});
  p.categories << Category.new({name: "Arts/Entertainment"});
  p.categories << Category.new({name: "Sports"});
  p.categories << Category.new({name: "Shopping"});
  p.categories << Category.new({name: "Animals"});
  p.categories << Category.new({name: "Tech/Science"});
  p.categories << Category.new({name: "Exploration"});
  p.categories << Category.new({name: "Religious Places"});
  p.categories << Category.new({name: "Historical"});
  p.categories << Category.new({name: "Museums"});
  p.categories << Category.new({name: "Culture"});
  p.categories << Category.new({name: "Romantic"});
  p.categories << Category.new({name: "Group Activities"});
  p.categories << Category.new({name: "Family-Friendly"});
  p.categories << Category.new({name: "Water/Beach Activities"});
end

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
