class ChangeRecommemdsToRecommends < ActiveRecord::Migration[5.2]
  def change
  	drop_table :recommemds
  end

  def up
    add_column :recommends, :recommend, :string
    add_column :recommends, :text, :text
  end
end
