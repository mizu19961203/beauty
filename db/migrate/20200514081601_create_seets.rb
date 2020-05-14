class CreateSeets < ActiveRecord::Migration[5.2]
  def change
    create_table :seets do |t|
      t.string :seet

      t.timestamps
    end
  end
end
