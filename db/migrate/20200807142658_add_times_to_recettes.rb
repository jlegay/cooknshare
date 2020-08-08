class AddTimesToRecettes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recettes, :temps_preparation_heures
    remove_column :recettes, :temps_preparation_minutes
    remove_column :recettes, :temps_cuissson_heures
    remove_column :recettes, :temps_cuisson_minutes
    remove_column :recettes, :temps_repos_heures
    remove_column :recettes, :temps_repos_minutes
    add_column :recettes, :temps_preparation, :time, default: '00:00:00'
    add_column :recettes, :temps_cuisson, :time, default: '00:00:00'
    add_column :recettes, :temps_repos, :time, default: '00:00:00'
  end
end
