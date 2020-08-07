class AddCreditPhotoToRecette < ActiveRecord::Migration[6.0]
  def change
    add_column :recettes, :credit_photo, :string
    add_column :recettes, :credit_recette, :string
  end
end
