class User < ActiveRecord::Base
  has_secure_password
  has_many :events
  has_many :events_attending, through: :attendees
  has_many :comments
end
