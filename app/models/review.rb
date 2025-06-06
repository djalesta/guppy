class Review < ApplicationRecord
  belongs_to :user
  belongs_to :match

  validates :score, inclusion: { in: 1..5 }
  validates :comment, presence: true
end
