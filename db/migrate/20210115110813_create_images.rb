class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :shop_id
      t.integer :image_url

      t.timestamps
    end
  end
end
