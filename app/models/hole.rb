class Hole < ApplicationRecord
  belongs_to :course

  validates :number, presence: true, uniqueness: { scope: :course_id }
  validates :par, presence: true
  validates :distance, presence: true
end
