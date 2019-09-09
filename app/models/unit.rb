class Unit < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  # validates :photo, presence: true
  validates :category, presence: true
  validates :description, presence: true

end
