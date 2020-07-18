Rails.application.routes.draw do
  devise_for :users
  root to: 'recettes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recettes
  resources :favorites, only: [:create, :index, :destroy]

  # resources :groupes, only: [:new, :create, :show] do
  #   resources :memberships, only: [:new, :create]
  # end

  get 'user_recettes', to: 'recettes#user_recettes'

end
