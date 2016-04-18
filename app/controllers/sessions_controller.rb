class SessionsController < ApplicationController

  def new
    if current_user?
      flash[:error] = "Already logged in!"
      redirect_to root_path
    end
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
        redirect_to links_path
    else
      flash[:error] = "Invalid email or password."
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to "/"
  end
end
