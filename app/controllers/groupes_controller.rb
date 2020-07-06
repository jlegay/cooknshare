class GroupesController < ApplicationController

  def new
    @groupe = Groupe.new
    authorize @groupe
  end

  def create
    @groupe = Groupe.new(groupe_params)
    authorize @groupe
    @groupe.user = current_user
    @groupe.save
    redirect_to groupe_path(@groupe)
  end

  def show
    @groupe = Groupe.find(params[:id])
    @membership = Membership.new
    authorize @groupe
    if @groupe.users.length > 1
      @users = @groupe.users
    end
    # raise
    # @recettes = @groupe.users.recettes
  end

  private

  def groupe_params
    params.require(:groupe).permit(:nom, :user)
  end

end
