class MemberRound < ApplicationRecord
  belongs_to :member
  belongs_to :round
  has_many :hole_scores, dependent: :destroy

  validates :total_score, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
