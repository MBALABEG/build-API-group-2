class AddStoreRefToSneakers < ActiveRecord::Migration
  def change
    add_reference :sneakers, :store, index: true, foreign_key: true
  end
end
