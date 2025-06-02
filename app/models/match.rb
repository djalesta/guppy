class Match < ApplicationRecord
  belongs_to :fish
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
