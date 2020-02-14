class UsersController < ApplicationController
  def show
    @user = User.find_by(params[:id])
    if @user
      return
    else
      flash[:danger] = t("not_found")
      redirect_to home_path
    end
  end

  def new
    @user = User.new
  end
end
