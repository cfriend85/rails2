class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy
    validates :name, :city, :state, presence: true, length: {minimum:2}
end
