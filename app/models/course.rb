class Course < ApplicationRecord
  has_many :holes, dependent: :destroy
  has_many :rounds, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
end
