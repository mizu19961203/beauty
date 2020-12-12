class AddEmailToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :email, :string
  end
end
