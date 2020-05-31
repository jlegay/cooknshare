class Recette < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  TYPESRECETTES = ['Entrée', 'Plat', 'Dessert', 'Apéro', 'Cocktail']

  include Filterable
  scope :filter_by_type_recette, -> (type_recette) { where type_recette: type_recette }
end
