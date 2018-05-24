class UsersController < ApplicationController
  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
