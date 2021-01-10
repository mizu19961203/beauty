class AddFacebookAccountToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :facebook_account, :string
  end
end
