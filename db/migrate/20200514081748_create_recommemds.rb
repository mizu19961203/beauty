class CreateRecommemds < ActiveRecord::Migration[5.2]
  def change
    create_table :recommemds do |t|
      t.string :recommend
      t.text :text

      t.timestamps
    end
  end
end
