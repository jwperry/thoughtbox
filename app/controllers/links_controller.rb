class LinksController < ApplicationController

  def index
  end

  def create
    if valid_link?(params["link"]["url"])
      @link = Link.create(link_params)
      flash[:notice] = "Link Created!"
      redirect_to links_path
    else
      flash[:error] = "Invalid Link."
      redirect_to links_path
    end
  end

  private

    def link_params
      params.require(:link).permit(:title, :url)
    end
end
