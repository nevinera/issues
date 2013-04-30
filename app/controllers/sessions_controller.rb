class SessionsController < ApplicationController
  def create
    session[:auth] ||= {}
    session[:auth][:github] = request.env["omniauth.auth"]
    redirect_to projects_path, :notice => "Logged in successfully"
  end

  def failure
    render :text => "FAILED AUTH"
  end

  def destroy
    reset_session
    redirect_to :root, :notice => "Logged out"
  end
end
