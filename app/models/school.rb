class School < ApplicationRecord
  has_many :reviews, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true

  include PgSearch
  pg_search_scope :search_by_city,
    against: [ :city ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }


  def self.pick_top_schools
    School.where('city = ?', "New Abbie" )
  end



end
