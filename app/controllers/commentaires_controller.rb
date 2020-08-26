class CommentairesController < ApplicationController

  def new
    @recette = Recette.find(params[:recette_id])
    @commentaire = Commentaire.new
    authorize @commentaire
    @user = current_user
  end

  def create
    @commentaire = Commentaire.new(commentaire_params)
    @recette = Recette.find(params[:recette_id])
    @commentaire.recette = @recette
    @commentaire.user = current_user
    authorize @commentaire
    @commentaire.save
    redirect_to recette_path(@recette)
  end

  private

  def commentaire_params
    params.require(:commentaire).permit(:content)
  end

end
