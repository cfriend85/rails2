class Book < ActiveRecord::Base
  belongs_to :user
  has_many :users 
  has_many :users, through: :favorites
  has_many :favorites, dependent: :destroy
end
