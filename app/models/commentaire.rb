class Commentaire < ApplicationRecord
  belongs_to :recette
  belongs_to :user
end
