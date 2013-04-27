class ApplicationController < ActionController::Base
  protect_from_forgery

  def auth_data
    if session[:auth].present?
      OpenStruct.new session[:auth]
    else
      nil
    end
  end
  helper_method :auth_data

  def logged_in?
    auth_data.present?
  end
  helper_method :logged_in?


  def github
    if @_github.blank?
      @_github = Github.new({
        :oauth_token      => auth_data.github.credentials.token
      })
    end

    @_github
  end
  helper_method :github
end
