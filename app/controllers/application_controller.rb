class ApplicationController < ActionController::Base
  require "uri"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :current_user?
  helper_method :valid_link?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?
    current_user
  end

  def valid_link?(link)
    uri = URI.parse(link)
    uri.kind_of?(URI::HTTP)
  rescue URI::InvalidURIError
    false
  end
end
