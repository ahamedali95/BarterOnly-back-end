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

def seedCategories(categories)
  for i in 0..(categories.length - 1)
    Category.find_or_create_by(name: categories[i])
  end
end

seedCategories(categories)
