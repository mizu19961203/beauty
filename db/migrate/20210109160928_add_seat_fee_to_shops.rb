class AddSeatFeeToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :seat_fee, :string
  end
end
