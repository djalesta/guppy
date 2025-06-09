class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fish, dependent: :destroy
  has_many :matches, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  has_many :received_matches, through: :fish, source: :matches
  has_many :received_reviews, through: :received_matches, source: :reviews
  has_many :questions

  def average_score
    return 0 if received_reviews.empty?
    (received_reviews.average(:score).to_f * 2).round / 2.0
  end
end
