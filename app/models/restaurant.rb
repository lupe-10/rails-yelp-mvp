class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in:["chinese", "italian", "japanese", "french", "belgian"]}

#   A restaurant must have a name, an address and a category.
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
end
