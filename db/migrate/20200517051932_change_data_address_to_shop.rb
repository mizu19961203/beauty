class ChangeDataAddressToShop < ActiveRecord::Migration[5.2]
  def change
  	change_column :shops, :address, :string
  end
end
