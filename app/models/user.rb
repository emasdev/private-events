class User < ApplicationRecord
  validates :name, uniqueness: true
  has_many :events
  has_many :event_attendings, foreign_key: attendee_id
  has_many :attended_events, through: :event_attendings, dependent: :delete_all
end
