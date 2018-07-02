class CreateProductListings < ActiveRecord::Migration[5.2]
  def change
    create_table :product_listings do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :value
      t.string :condition
      t.string :delivery_method
      t.string :exchange_item
      t.string :location
      t.integer :rating
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
