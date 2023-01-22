class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendees, source: :attendee

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :date, presence: true

  scope :upcoming, -> { where('events.date >= ?', Date.today) }
  scope :past, -> { where('events.date < ?', Date.today) }
end
