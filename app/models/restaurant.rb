class Restaurant < ApplicationRecord
  CATOGORIES = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATOGORIES }
end
