class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  validates :content, :rating, presence: true
  validates :rating,  inclusion: { in: 0..5}, numericality: { only_integer: true }
 

 

  

#   When a restaurant is destroyed, all of its reviews must be destroyed as well.
# A review must belong to a restaurant.
# A review must have content and a rating.
# A review’s rating must be a number between 0 and 5.
end
