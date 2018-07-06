class User < ApplicationRecord
  has_many :product_listings
  has_many :purchases
  has_many :categories, through: :product_listings

  #telling bcrypt that this model contains a password field which needs to be
  #hashed
  has_secure_password

  #validations
  #Do not have check for presence since we are doing on the front end
  #using the "required" attribute for the form fields
  validates :first_name, length: {minimum: 2, maximum: 10}
  validates :last_name, length: {minimum: 2, maximum: 10}
  validates :username, {presence: true, uniqueness: true}
  validates :username, length: {minimum: 6, maximum: 15}
  validates :password, {presence: true}
  validates :password, length: {minimum: 8, maximum: 15}
  validates :location, {presence: true}
end
