class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
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
