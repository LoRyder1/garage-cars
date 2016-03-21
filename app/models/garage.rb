class Garage < ActiveRecord::Base
  has_many :cars
  validates :name, presence: true, length: {minimum: 5}
end
