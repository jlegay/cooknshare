class FavoritesController < ApplicationController

  def index
    @favorites = policy_scope(Favorite).order(created_at: :desc)
  end

  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.recette_id = params[:recette_id]
    authorize @favorite
    @favorite.save!
  end

  private

  # def favorite_params
  #   params(:favorite).permit(:user_id, :recette_id)
  # end


end
