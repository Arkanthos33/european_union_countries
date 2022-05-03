class CreateCountryinformations < ActiveRecord::Migration[6.1]
  def change
    create_table :countryinformations do |t|
      t.string :name
      t.string :capital
      t.string :population
      t.string :formeetat
      t.string :langueoficiel
      t.text :flag
      t.boolean :espaceschengen
      t.boolean :zoneeuro

      t.timestamps
    end
  end
end
