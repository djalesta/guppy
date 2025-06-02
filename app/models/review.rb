class Review < ApplicationRecord
  belongs_to :user
  belongs_to :match
  # has_many :users, through: :matches
end
