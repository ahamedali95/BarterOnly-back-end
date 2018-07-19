class ProductListing < ApplicationRecord
  belongs_to :user
  belongs_to :category

  #validations
  validates :name, {presence: true}
  validates :name, length: {minimum: 5, maximum: 30}
  validates :description, {presence: true}
  validates :description, length: {minimum: 10, maximum: 300}
  validates :image, {presence: true}
  validates :condition, {presence: true}
  validates :location , {presence: true}
  validates :delivery_method, {presence: true}
end
