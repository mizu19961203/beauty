class AddColumnRecommends < ActiveRecord::Migration[5.2]
  def up
    add_column :recommends, :recommend, :string
    add_column :recommends, :text, :text
  end
end
