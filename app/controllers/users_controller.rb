class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Sign Up Successful!"
      session[:user_id] = @user.id
      redirect_to links_path
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to sign_up_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
