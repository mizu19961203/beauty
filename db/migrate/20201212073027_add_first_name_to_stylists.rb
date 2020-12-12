class AddFirstNameToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :first_name, :string
  end
end
