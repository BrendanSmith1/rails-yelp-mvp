class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], message: 'Choose an integer 0-5' }
  validates :rating, numericality: { only_integer: true }
end

# A review must belong to a restaurant.
# A review must have a content.
# A review must have a rating.
# A review’s rating must be a number between 0 and 5.
# A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
