class AddPrepTimeToRecettes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recettes, :temps_preparation_heures
    add_column :recettes, :temps_preparation_heures, :time, default: '00:00:00'
  end
end
