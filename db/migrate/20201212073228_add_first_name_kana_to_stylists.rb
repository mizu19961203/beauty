class AddFirstNameKanaToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :first_name_kana, :string
  end
end
