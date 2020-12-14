class AddSkilledStyleToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :skilled_style1, :string
  end
end
