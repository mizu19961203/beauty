class AddColumnToShops < ActiveRecord::Migration[5.2]
  def change
  	add_column :shops, :user_id, :integer
  	add_column :shops, :image_id, :text
  	add_column :shops, :seet_id, :integer
  	add_column :shops, :recommend_id, :integer
  	add_column :shops, :description, :text
  	add_column :shops, :address, :text
  	add_column :shops, :latitude, :float
  	add_column :shops, :longitude, :float
  end
end
