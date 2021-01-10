class AddInstagramAccountToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :instagram_account, :string
  end
end
