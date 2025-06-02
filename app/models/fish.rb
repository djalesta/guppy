class Fish < ApplicationRecord
  belongs_to :user
  has_many :matches, dependent: :destroy
  has_many_attached :photos
end
