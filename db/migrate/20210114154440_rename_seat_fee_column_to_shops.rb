class RenameSeatFeeColumnToShops < ActiveRecord::Migration[5.2]
  def change
    rename_column :shops, :seat_fee, :seat_fee_id
  end
end
