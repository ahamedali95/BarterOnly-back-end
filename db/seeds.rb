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
    value: "100",
    delivery_method: "Shipping",
    condition: "Good",
    exchange_item: nil,
    location: "Nebraska",
    rating: 5,
    user_id: 1,
    category_id: 15,
    isSold: false
  },
  {
    name: "1991 Petk",
    description: "991 Peterise, air ride suspension. Needs tir older model hopper bottom trailer.",
    image: "https://barteronly.com/images/com_adsmanager/ads/1991-peterbilt-377-truck_642_1_t.jpg",
    value: "200",
    delivery_method: "Local Pick-up",
    condition: "Like new",
    exchange_item: nil,
    location: "District of Columbia",
    rating: 2,
    user_id: 1,
    category_id: 8,
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
    category_id: 8,
    isSold: false
  },
  {
    name: "Trailer",
    description: "60 serieser trading for older model hopper bottom trailer.",
    image: "https://barteronly.com/images/com_adsmanager/ads/1991-peterbilt-377-truck_642_1_t.jpg",
    value: "5000",
    delivery_method: "Local Pick-up",
    condition: "Like new",
    exchange_item: nil,
    location: "District of Columbia",
    rating: 3,
    user_id: 1,
    category_id: 8,
    isSold: false
  },
  {
    name: "Baby Trailer",
    description: "This trailer is in good condition. There is a small tear on the side canvas. This is used and can tell my kiddos have ridden in it. Trailer still pulls nicely and safety belts work very well.",
    image: "https://barteronly.com/images/com_adsmanager/ads/91_1.jpg",
    value: "50",
    delivery_method: "Local Pick-up",
    condition: "Like new",
    exchange_item: "Very nice office furniture",
    location: "Alaska",
    rating: 3,
    user_id: 1,
    category_id: 22,
    isSold: false
  },
  {
    name: "Oilless Turkey Fryer",
    description: "Bought this a few years ago and used it several times. My wife prefers smoked turkeys so I no longer use this. The item works it is a Masterbuilt Oil less Turkey Fryer.",
    image: "https://barteronly.com/images/com_adsmanager/ads/94_1.jpg",
    value: "60",
    delivery_method: "Local Pick-up",
    condition: "Like new",
    exchange_item: "Handheld GPS",
    location: "South Carolina",
    rating: 3,
    user_id: 1,
    category_id: 5,
    isSold: false
  },
  {
    name: "2006 Polaris Trailblazer 250",
    description: "This puppy is in great condition and fast. Normal wear for a 4 wheeler but no cracks or breaks. I added on the front, rear and gun racks. Also added an extra set of halogen lights to make sure I didn't ride faster than the factory lights.",
    image: "https://barteronly.com/images/com_adsmanager/ads/51_1.jpg",
    value: "1000",
    delivery_method: "Shipping",
    condition: "Good",
    exchange_item: nil,
    location: "North Carolina",
    rating: 3,
    user_id: 1,
    category_id: 8,
    isSold: false
  },
  {
    name: "Glass Etchings",
    description: "Tall Glass Panel etchings, Nautical Mythology Themes. 2 Panels etched and airbrushed over 10 ft high",
    image: "https://barteronly.com/images/com_adsmanager/ads/glass-etchings_673_1.jpg",
    value: "2000",
    delivery_method: "Shipping",
    condition: "Good",
    exchange_item: nil,
    location: "Texas",
    rating: 1,
    user_id: 1,
    category_id: 7,
    isSold: false
  },
  {
    name: "Rotatory Hopper Money Drop Safe",
    description: "Very Secure 125lbs of harded iron and steel digit lock.New work $500+ 3ft tall 2 ft wide.",
    image: "https://barteronly.com/images/com_adsmanager/ads/431_1.jpg",
    value: "2000",
    delivery_method: "Shipping",
    condition: "Brand New",
    exchange_item: "Xbox 360 slim in good condition",
    location: "Texas",
    rating: 5,
    user_id: 1,
    category_id: 5,
    isSold: false
  },
  {
    name: "Male canary",
    description: "Yellow male canary with brown spot on head...singer",
    image: "https://barteronly.com/images/com_adsmanager/ads/480_1.jpg",
    value: "1000",
    delivery_method: "Local Pick-up",
    condition: "Brand New",
    exchange_item: nil,
    location: "Rhode Island",
    rating: 5,
    user_id: 1,
    category_id: 3,
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
