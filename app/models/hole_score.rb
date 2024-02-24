class HoleScore < ApplicationRecord
  belongs_to :member_round
  belongs_to :hole

  validates :strokes, numericality: { only_integer: true, greater_than: 0 }
end
