class AddPasswordToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :password, :string
  end
end
