class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private
  def current_user
  	@current_user ||= User.find(session[:users_id]) if session[:users_id]

  end
end
