class ProductListing < ApplicationRecord
  belongs_to :user
  belongs_to :category

  #validations
  validates :name, {presence: true}
  validates :name, length: {minimum: 5, maximum: 26}
  validates :description, {presence: true}
  validates :description, length: {minimum: 10, maximum: 200}
  validates :image, {presence: true}
  validates :condition, {presence: true}
  validates :location , {presence: true}
  validates :delivery_method, {presence: true}
end
