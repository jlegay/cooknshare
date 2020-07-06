class Groupe < ApplicationRecord
  validates :nom, uniqueness: true, presence: true
  has_many :memberships, dependent: :destroy
  belongs_to :user
  has_many :users, through: :memberships
end
