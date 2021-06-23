class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: {maximum:72}, on: :create, on: :update, presence: true
  validates :password_confirmation, on: :create, on: :update, length: {maximum:72}, presence: true
  validates :name, length: {minimum: 2}, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true, presence: true
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
end
