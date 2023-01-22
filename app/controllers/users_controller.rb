class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @created_events = User.find(params[:id]).created_events.includes(:creator, :attendees)
    @attended_events = User.find(params[:id]).attended_events.includes(:creator, :attendees)
    #@created_events = Event.includes(:creator).where("creator_id = ?", current_user.id)
    #@attended_events = Event.includes(:attendees, :creator).where(current_user IN events.attendees)
  end
end
