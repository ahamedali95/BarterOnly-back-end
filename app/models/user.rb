class User < ApplicationRecord
  has_many :product_listings
  has_many :purchases
  has_many :categories, through: :product_listings
  has_secure_password
  validates :username, {presence: true, uniqueness: true}
  validates :password, {presence: true}
end
