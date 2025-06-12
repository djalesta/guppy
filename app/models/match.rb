class Match < ApplicationRecord
  belongs_to :fish
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  accepts_nested_attributes_for :messages, :reviews
  validates :start_date, presence: true
  validates :end_date, presence: true
  
  def messages_attributes=(attributes)
    attributes.each do |_i, child_attrs|

      # Set a default value if it's not already present
      child_attrs[:skip_broadcast] ||= true
      self.messages.build(child_attrs)
    end
  end
end
