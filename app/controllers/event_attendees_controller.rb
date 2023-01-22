class EventAttendeesController < ApplicationController
  def create
    @event_attendee = EventAttendee.new(event_attendee_params)

    if @event_attendee.save
      redirect_back fallback_location: root_path, notice: 'Successfully joined event.'
    else  
      redirect_back fallback_location: root_path, status: :unprocessable_entity
    end
  end

  def destroy
    @event_attendee = EventAttendee.find_by(event_attendee_params)

    if @event_attendee.destroy
      redirect_to root_path, notice: 'Successfully left event.'
    else  
      redirect_back fallback_location: root_path, status: :unproccessable_entity
    end
  end

  private

  def event_attendee_params
    params.permit(:attendee_id, :attended_event_id)
  end
end
