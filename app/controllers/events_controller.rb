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
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :time)
  end
end
