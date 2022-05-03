class AddPopulationToCountry < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :population, :strings
  end
end
