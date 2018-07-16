class School < ApplicationRecord
  has_many :reviews, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true

  include PgSearch
  pg_search_scope :search_by_city,
    against: [ :city, :name ],
    using: {
      tsearch: { prefix: true }
    }


  def self.pick_top_schools
    @topschools = School.all
    @reviews = Review.all
    @best = @topschools.each do |topschool|
      topschool.rating_average = topschool.reviews.average(:rating).to_f.round(1)
    end
    @top = @best.sort_by { |k| k[:rating_average] }.reverse!
    @homebest = []
    @homebest << @top.first
    @homebest << @top.second
    @homebest << @top.third
    @homebest
  end

end
