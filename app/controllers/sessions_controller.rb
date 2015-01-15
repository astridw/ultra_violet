class SessionsController < ApplicationController

  def new
  end

  def signup
    @user = User.new
  end

  def create_user
    @user = User.new(params.require(:user).permit(:username, :password, :password_confirmation))
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :signup
    end
  end


end
