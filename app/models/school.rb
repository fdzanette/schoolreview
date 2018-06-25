class School < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
