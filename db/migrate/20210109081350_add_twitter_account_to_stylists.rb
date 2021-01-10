class AddTwitterAccountToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :twitter_account, :string
  end
end
