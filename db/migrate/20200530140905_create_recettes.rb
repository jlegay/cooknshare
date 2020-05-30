class CreateRecettes < ActiveRecord::Migration[6.0]
  def change
    create_table :recettes do |t|
      t.string :nom
      t.string :type_recette
      t.integer :nb_parts
      t.integer :temps_total
      t.text :ingredients
      t.text :preparation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
