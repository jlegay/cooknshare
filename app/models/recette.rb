class Recette < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :favorites, dependent: :destroy

  TYPESRECETTES = ['Entrée', 'Plat', 'Dessert', 'Apéro', 'Cocktail']

  include Filterable
  scope :filter_by_type_recette, -> (type_recette) { where type_recette: type_recette }
end
