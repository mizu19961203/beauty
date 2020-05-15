class RenameActiveColumnToBases < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bases, :active, :base
  end
end
