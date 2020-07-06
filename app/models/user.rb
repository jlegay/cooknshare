class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recettes
  has_many :favorites, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :groupes
  has_one_attached :photo

  validates :email, presence: true
  validates :pseudo, presence: true, uniqueness: true

end
