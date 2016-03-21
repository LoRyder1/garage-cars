class Garage < ActiveRecord::Base
  has_many :cars, dependent: :destroy
  validates :name, presence: true, length: {minimum: 5}
end
