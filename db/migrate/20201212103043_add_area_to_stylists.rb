class AddAreaToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :area, :string
  end
end
