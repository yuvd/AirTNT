class Unit < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  # validates :photo, presence: true
  validates :category, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category_and_description,
    against:
     {
       name: 'A',
       category: 'B',
       description: 'C'
     },
    using: {
      tsearch: { prefix: true }
    }

end
