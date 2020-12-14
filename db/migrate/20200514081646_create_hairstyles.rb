class CreateHairstyles < ActiveRecord::Migration[5.2]
  def change
    create_table :hairstyles do |t|
      t.string :menu

      t.timestamps
    end
  end
end
