class UsersController < ApplicationController
  def new
  	user = User.new
  end

  def create
  	user = User.new(user_params)
  	if user.save
      flash[:notice] = "Tạo tài khoản thành công"
      session[:user_id] = user.id
      redirect_to '/posts'
    else
      flash[:alert] = "Tạo tài khoản thất bại"
      redirect_to '/signup'
      render :new
    end
  end
  private

  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
