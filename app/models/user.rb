class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :school
  has_many :reviews
  validates :name, presence: true
  validates_with EmailAddress::ActiveRecordValidator, field: :email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
