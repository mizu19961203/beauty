class CreateRecommends < ActiveRecord::Migration[5.2]
  def change
    create_table :recommends do |t|

      t.timestamps
    end
  end
end
