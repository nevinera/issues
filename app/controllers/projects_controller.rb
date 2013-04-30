class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @projects = current_user.repos
  end

  def show
    @project = current_user.repo(params[:id])
  end
end
