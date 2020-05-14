class AddColumnToStylists < ActiveRecord::Migration[5.2]
  def change
  	add_column :stylists, :user_id, :integer
  	add_column :stylists, :image_id, :text
  	add_column :stylists, :base_id, :integer
  	add_column :stylists, :hairstyle_id, :integer
  	add_column :stylists, :description, :text
  	add_column :stylists, :date_start, :date
  	add_column :stylists, :date_fin, :date
  end
end
