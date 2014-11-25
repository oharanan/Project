class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :stock_quantity
      t.string :size
      t.string :description
      t.string :image
      t.string :status
      t.timestamps
    end
  end
end
