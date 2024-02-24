class Round < ApplicationRecord
  belongs_to :course
  has_many :member_rounds, dependent: :destroy
  has_many :members, through: :member_rounds

  validates :date, presence: true
end
