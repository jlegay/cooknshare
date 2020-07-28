class RecettesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: [ :show, :index]

  def index
    skip_policy_scope
    # @recettes = policy_scope(Recette).order(created_at: :desc)
    if params[:query].present?
      @recettes = policy_scope(Recette).order(created_at: :desc).search(params[:query])
    else
      @recettes = policy_scope(Recette).order(created_at: :desc)
    end
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
    @recette = Recette.find(params[:id])
    authorize @recette
  end

  def update
    @recette = Recette.find(params[:id])
    authorize @recette
    @recette.update(recette_params)
    redirect_to recette_path(@recette)
  end

  def destroy
    @recette = Recette.find(params[:id])
    authorize @recette
    @recette.destroy
    redirect_to user_recettes_path
  end

  def user_recettes
    @recettes = Recette.where(user_id: current_user.id)
    authorize @recettes
  end

  private

  def recette_params
    params.require(:recette).permit(:user_id, :nom, :type_recette, :nb_parts, :temps_total, :ingredients, :preparation, :photo)
  end

end
