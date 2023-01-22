class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to event_path(@event.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.includes(:creator, :attendees).find(params[:id])
  end

  def index
    @upcoming_events = Event.upcoming.includes(:creator, :attendees)
    @past_events = Event.past.includes(:creator, :attendees)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to event_path(@event.id), notice: 'Successfully edited event.'
    else
      render :edit, status: :unproccessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])

    if @event.destroy
      redirect_to root_path, notice: 'Successfully deleted event.'
    else
      redirect_back fallback_location: root_path, status: :unproccessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end
