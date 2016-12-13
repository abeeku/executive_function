class TasksController < ApplicationController
  include ApplicationHelper
 layout  'profile'
  def index
    @user = User.find_by_username!(params[:username])
    sleep 1
    @incomplete_tasks = @user.tasks.where(complete: false)
    @complete_tasks = @user.tasks.where(complete: true)
  end

  def new
    @task = Task.new
  end



  def create
    @task =  current_user.tasks.create!(params[:task])
  respond_to do |format|
    format.html { redirect_to profile_for(current_user) }
    format.js
  end
  end

  def update
    @task =  current_user.tasks.find(params[:id])
    @task.update_attributes!(params[:task])
      end

  respond_to do |format|
    format.html { redirect_to profile_for(current_user) }
    format.js
  end
  def destroy
    @task =  Task.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to profile_for(current_user) }
      format.js
    end
  end
end
