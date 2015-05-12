class AddStoreRefToBrands < ActiveRecord::Migration
  def change
    add_reference :brands, :store, index: true, foreign_key: true
    add_reference :sneakers, :brand, index: true, foreign_key: true
  end
end
