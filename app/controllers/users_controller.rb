class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @created_events = User.find(params[:id]).created_events.includes(:creator, :attendees)
    @attended_events = User.find(params[:id]).attended_events.includes(:creator, :attendees)
  end
end
