class Category < ApplicationRecord
  has_many :product_listings
  has_many :purchases
  has_many :users, through: :product_listings
end
