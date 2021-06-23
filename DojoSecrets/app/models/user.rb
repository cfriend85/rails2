class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: {maximum:72}, confirmation: true, on: :create, presence: true
  validates :name, length: {minimum: 2}, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, presence: true
end