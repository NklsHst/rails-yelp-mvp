class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: true
  validates :restaurant_id, presence: true
end
