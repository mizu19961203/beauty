class AddLastNameToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :last_name, :string
  end
end
