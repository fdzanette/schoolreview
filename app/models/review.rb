class Review < ApplicationRecord
  acts_as_votable
  belongs_to :school
  belongs_to :user
  validates :rating, :inclusion => { :in => 0..5 }
  mount_uploader :photo, PhotoUploader
end
