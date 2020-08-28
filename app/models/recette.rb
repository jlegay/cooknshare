class Recette < ApplicationRecord
  searchkick
  belongs_to :user
  has_one_attached :photo
  has_many :commentaires, dependent: :destroy
  has_many :favorites, dependent: :destroy
  # avec options mise en forme texte : (ajouter as: :rich_text_area dans simple_form)
  # has_rich_text :ingredients
  # has_rich_text :preparation

  TYPESRECETTES = ['Entrée', 'Plat', 'Dessert', 'Apéro', 'Cocktail', 'Base']
  # include Filterable
  # scope :filter_by_type_recette, -> (type_recette) { where type_recette: type_recette }
end
