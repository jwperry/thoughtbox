class SessionsController < ApplicationController

  def new
    if current_user?
      flash[:error] = "Already logged in!"
      redirect_to root_path
    end
  end

  def create
  end

end
