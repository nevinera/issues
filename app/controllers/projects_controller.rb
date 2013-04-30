class ProjectsController < ApplicationController
  def index
    if logged_in?
      @projects = current_user.repos
    else
      @projects = []
    end
  end
end
