class ChangeEventattendeesToEventAttendees < ActiveRecord::Migration[7.0]
  def change
    rename_table :eventattendees, :event_attendees
  end
end
