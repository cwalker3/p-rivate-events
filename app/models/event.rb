class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :time, presence: true
  validates :date, presence: true
end
