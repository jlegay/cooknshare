class RecettesController < ApplicationController

  def index
    @recettes = policy_scope(Recette).order(created_at: :desc)
    @recettes = Recette.filter(params.slice(:type_recette))
  end

  def new
    @recette = Recette.new
    authorize @recette
    @user = current_user
  end

  def create
    @recette = Recette.new(recette_params)
    @recette.user = current_user
    authorize @recette
    @recette.save
    redirect_to recette_path(@recette)
  end

  def show
  @recette = Recette.find(params[:id])
  authorize @recette
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recette_params
    params.require(:recette).permit(:user_id, :nom, :type_recette, :nb_parts, :temps_total, :ingredients, :preparation, :photo)
  end

end
