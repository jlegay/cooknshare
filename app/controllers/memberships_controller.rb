class MembershipsController < ApplicationController



  def create
    @groupe = Groupe.find(params[:groupe_id])
    @membership = Membership.new(membership_params)
    @membership.groupe = @groupe
    authorize @membership
    @membership.active = false
    @membership.status = 'requested'
    @membership.save
    redirect_to groupe_path(@groupe)
  end


  private

  def membership_params
    params.require(:membership).permit(:user_id, :active, :status)
  end

end

    # @user = User.find_by_pseudo( params[:user])
    # @membership.user_id = @user.id
