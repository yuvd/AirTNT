class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :unit

  validates :target_name, presence: true
  validates :target_address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
