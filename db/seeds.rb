users = [
  {first_name: "Ahamed", last_name: "Abbas", location: "New York, NY", username: "ahamedali95", password_digest: "1234"}
];

categories = [
  "Others",
  "Agriculture/Farm",
  "Animals",
  "Antiques",
  "Appliances",
  "Archery",
  "Art",
  "Automotive",
  "Books",
  "CDs & Music",
  "Clothing",
  "Collectibles",
  "Cosmetics",
  "Crafts",
  "Electronics",
  "Furniture",
  "Gemstones",
  "Home Decor",
  "Home Repair",
  "Industrial Equipment",
  "Jewelry & Watches",
  "Kids Stuff",
  "Knives & Swords",
  "Lawn & Garden",
  "Motorcycles",
  "Musical Instruments",
  "Precious Metals",
  "Sporting Goods",
  "Tools",
  "Tickets"
]

product_listings = [
  {
    name: "RCA Stereo with Sony Speakers",
    description: "This is a tuner with cassette. Has hook-ups for CD player and television. I use it in my garage while working on my car.",
    image: "https://barteronly.com/images/com_adsmanager/ads/rca-stereo-with-sony-speakers_49_2.jpg",
    value: "200",
    delivery_method: "Shipping",
    condition: "Good",
    exchange_item: "Very nice office furniture(desk, high back chairs)",
    location: "Nebraska City, Nebraska",
    date_posted: "02/27/2017",
    rating: 5,
    user_id: 1,
    category_id: 15
  },
  {
    name: "1991 Peterbilt 377 Truck",
    description: "991 Peterbilt 377, 400hp Detroit , 60 series, engine brakes, cruise, air ride suspension. Needs tires and left headlight assembly. Valued at $5,800. Will consider trading for older model hopper bottom trailer.",
    image: "https://barteronly.com/images/com_adsmanager/ads/1991-peterbilt-377-truck_642_1_t.jpg",
    value: "20000",
    delivery_method: "Pick up",
    condition: "Like new",
    exchange_item: "Cash",
    location: "Washington D.C., District of Columbia",
    date_posted: "02/08/2017",
    rating: 2,
    user_id: 1,
    category_id: 20
  },
  {
    name: "duratrax rc car",
    description: "i have a duratrax nitro buggy up for trade it runs but needs work i have spare parts and fuel for it",
    image: "https://barteronly.com/images/com_adsmanager/ads/304_1_t.jpg",
    value: "200",
    delivery_method: "Shipping",
    condition: "Old",
    exchange_item: "rc helicopter",
    location: "Washington D.C., District of Columbia",
    date_posted: "02/10/2018",
    rating: 1,
    user_id: 1,
    category_id: 31
  },
];

def seedUsers(users)
  for i in 0..(users.length - 1)
    User.find_or_create_by(
      first_name: users[i][:first_name],
      last_name: users[i][:last_name],
      location: users[i][:location],
      username: users[i][:username],
      password_digest: users[i][:password_digest]
    )
  end
end

def seedCategories(categories)
  for i in 0..(categories.length - 1)
    Category.find_or_create_by(name: categories[i])
  end
end

def seedProductListings(product_listings)
  for i in 0..(product_listings.length - 1)
    ProductListing.find_or_create_by(
    name: product_listings[i][:name],
    description: product_listings[i][:description],
    image: product_listings[i][:image],
    value: product_listings[i][:value],
    delivery_method: product_listings[i][:delivery_method],
    condition: product_listings[i][:condition],
    exchange_item: product_listings[i][:exchange_item],
    location: product_listings[i][:location],
    date_posted: product_listings[i][:date_posted],
    rating: product_listings[i][:rating],
    user_id: product_listings[i][:user_id],
    category_id: product_listings[i][:category_id]
  )
  end
end

seedCategories(categories)
seedUsers(users)
seedProductListings(product_listings)
