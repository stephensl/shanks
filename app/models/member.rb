class Member < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :date_of_birth, presence: true
  has_many :member_rounds
  has_many :rounds, through: :member_rounds
end
