users = [
  {first_name: "Ahamed", last_name: "Abbas", image: "", location: "Alaska", username: "ahamedali95", password: "meccamadina", password_confirmation: "meccamadina"}
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
    name: "RCA Stereakers",
    description: "This is a tuner with cassettage while working on my car.",
    image: "https://barteronly.com/images/com_adsmanager/ads/rca-stereo-with-sony-speakers_49_2.jpg",
    value: "200",
    delivery_method: "Shipping",
    condition: "Good",
    exchange_item: nil,
    location: "Nebraska City, Nebraska",
    rating: 5,
    user_id: 1,
    category_id: 15,
    isSold: false
  },
  {
    name: "1991 Petk",
    description: "991 Peterise, air ride suspension. Needs tir older model hopper bottom trailer.",
    image: "https://barteronly.com/images/com_adsmanager/ads/1991-peterbilt-377-truck_642_1_t.jpg",
    value: "20000",
    delivery_method: "Pick up",
    condition: "Like new",
    exchange_item: nil,
    location: "Washington D.C., District of Columbia",
    rating: 2,
    user_id: 1,
    category_id: 20,
    isSold: false
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
    rating: 4,
    user_id: 1,
    category_id: 21,
    isSold: false
  },
  {
    name: "Carjjbjb",
    description: "60 serieser trading for older model hopper bottom trailer.",
    image: "https://barteronly.com/images/com_adsmanager/ads/1991-peterbilt-377-truck_642_1_t.jpg",
    value: "2",
    delivery_method: "Pick up",
    condition: "Like new",
    exchange_item: nil,
    location: "Washington D.C., District of Columbia",
    rating: 3,
    user_id: 1,
    category_id: 20,
    isSold: false
  }
];

def seedUsers(users)
  for i in 0..(users.length - 1)
    User.create(
      first_name: users[i][:first_name],
      last_name: users[i][:last_name],
      location: users[i][:location],
      image: users[i][:image],
      username: users[i][:username],
      password: users[i][:password],
      password_confirmation: users[i][:password_confirmation]
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
    rating: product_listings[i][:rating],
    user_id: product_listings[i][:user_id],
    category_id: product_listings[i][:category_id],
    isSold: product_listings[i][:isSold]
  )
  end
end

seedCategories(categories)
seedUsers(users)
seedProductListings(product_listings)
