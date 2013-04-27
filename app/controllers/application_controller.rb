class ApplicationController < ActionController::Base
  protect_from_forgery

  def auth_data
    session[:auth]
  end
  helper_method :auth_data

  def logged_in?
    auth_data.present?
  end
  helper_method :logged_in?
end
