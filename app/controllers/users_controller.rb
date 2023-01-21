class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @created_events = User.find(params[:id]).created_events
  end
end
