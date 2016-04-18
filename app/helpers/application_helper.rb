module ApplicationHelper

  def log_link
    if current_user?
      link_to "Log Out", logout_path, method: :delete
    else
      link_to "Log In", login_path
    end
  end

end
