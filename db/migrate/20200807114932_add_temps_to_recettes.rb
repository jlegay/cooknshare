class AddTempsToRecettes < ActiveRecord::Migration[6.0]
  def change
    add_column :recettes, :temps_preparation_heures, :integer
    add_column :recettes, :temps_preparation_minutes, :integer
    add_column :recettes, :temps_cuissson_heures, :integer
    add_column :recettes, :temps_cuisson_minutes, :integer
    add_column :recettes, :temps_repos_heures, :integer
    add_column :recettes, :temps_repos_minutes, :integer
    remove_column :recettes, :temps_total
  end
end
