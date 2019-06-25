class Rollercoaster < ApplicationRecord
  belongs_to :park
  has_many :rides
  has_many :rollercoasters, through: :rides
  validates :name, :height, :location, :length, presence: true
end
