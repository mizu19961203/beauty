class AddSkilledStyle2ToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :skilled_style2, :string
  end
end
