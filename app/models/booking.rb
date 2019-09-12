class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :unit

  geocoded_by :target_address
  after_validation :geocode, if: :will_save_change_to_target_address?

  validates :target_name, presence: true
  validates :target_address, presence: true
  validates :start_date, presence: true
end
