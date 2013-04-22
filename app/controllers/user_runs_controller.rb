class UserRunsController < ApplicationController
  protect_from_forgery

  def create
    @user_run = UserRun.new(params[:user_run])
    @user_run.save
    redirect_to stairways_path
  end
end
