class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to projects_path
    end
  end

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
