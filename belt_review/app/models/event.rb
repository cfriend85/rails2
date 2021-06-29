class Event < ActiveRecord::Base
  belongs_to :user
  has_many :attendees, dependent: :destroy
  has_many :users
  has_many :users_attending, through: :attendees, source: :user
  has_many :comments, dependent: :destroy
end
