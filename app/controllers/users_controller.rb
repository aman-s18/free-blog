class   UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit_profile, :update_profile]

  def show
    @profile = @user.profile
  end

  def update_profile
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to user_url(@user), notice: "Profile was successfully updated." }
      else
        format.html { render :edit_profile, status: :unprocessable_entity }
      end
    end
  end

  def edit_profile
  end


  private
    def set_user
      @user = User.find_by_id(params[:id])
      redirect_to root_url, notice: "User not found!" unless @user
      @profile = @user.profile
    end

    def profile_params
      params.require(:profile).permit(:full_name, :phone, :bio, :picture, :user_id)
    end
end