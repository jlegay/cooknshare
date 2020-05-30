class Recette < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  TYPESRECETTES = ['Entrée', 'Plat', 'Dessert', 'Apéro', 'Cocktail']
end
