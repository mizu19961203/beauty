class AddCareerYearsToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :career_years, :integer
  end
end
