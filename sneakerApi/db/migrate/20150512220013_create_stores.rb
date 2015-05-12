class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.text :inventory, array: true, default:[]

      t.timestamps null: false
    end
  end
end
