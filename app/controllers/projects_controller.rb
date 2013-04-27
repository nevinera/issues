class ProjectsController < ApplicationController
  def index
    if logged_in?
      @projects = Project.all(github)
    else
      @projects = []
    end
  end
end
