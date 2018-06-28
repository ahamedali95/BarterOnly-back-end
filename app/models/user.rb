class User < ApplicationRecord
  has_many :product_listings
  has_many :categories, through: :product_listings
end
