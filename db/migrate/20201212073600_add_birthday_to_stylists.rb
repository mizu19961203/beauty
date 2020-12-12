class AddBirthdayToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :birthday, :date
  end
end
