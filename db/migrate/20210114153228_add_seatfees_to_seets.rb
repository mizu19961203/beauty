class AddSeatfeesToSeets < ActiveRecord::Migration[5.2]
  def change
    add_column :seets, :seat_fees, :string
  end
end
