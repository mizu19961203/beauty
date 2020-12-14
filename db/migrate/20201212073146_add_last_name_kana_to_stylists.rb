class AddLastNameKanaToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :last_name_kana, :string
  end
end
