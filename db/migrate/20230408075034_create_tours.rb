class CreateTours < ActiveRecord::Migration[7.0]
  def change
    create_table :tours do |t|
      t.string :image
      t.string :title
      t.string :city
      t.integer :distance
      t.integer :price
      t.integer :maxGroupSize
      t.text :description
      t.decimal :rating
      t.boolean :featured
      

      t.timestamps
    end
  end
end
