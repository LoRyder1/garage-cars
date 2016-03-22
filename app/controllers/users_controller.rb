class UsersController < ApplicationController
  skip_before_filter :require_login
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    m = /([^@]+)/.match(@user.email)
    @user.username = m[0]

    if @user.save
      session[:user_id] = @user.id
      redirect_to welcome_index_path
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :display_name, :password)
  end
end
