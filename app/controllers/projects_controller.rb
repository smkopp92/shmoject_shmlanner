class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @users = @project.users
    @tasks = @project.tasks
  end
end
