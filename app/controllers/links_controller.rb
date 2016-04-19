class LinksController < ApplicationController

  def index
    @links = current_user.links
  end

  def create
    if valid_link?(params["link"]["url"])
      @link = Link.create(link_params)
      current_user.links << @link
      flash[:notice] = "Link Created!"
      redirect_to links_path
    else
      flash[:error] = "Invalid Link."
      redirect_to links_path
    end
  end

  def update
    if params["link_id"]
      link = Link.find_by(id: params["link_id"])
      link.toggle_read_status
    end
  end

  private

    def link_params
      params.require(:link).permit(:title, :url)
    end
end
