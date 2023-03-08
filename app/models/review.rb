class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: 0..5, allow_nil: true }
  validates :content, presence: true
end
