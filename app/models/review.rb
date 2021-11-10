class Review < ApplicationRecord
  belongs_to :restaurant #@review.restaurant
  validates :content, presence: true
  validates :content, length: {minimum: 30}
end
