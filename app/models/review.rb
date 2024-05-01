class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, length: { minimum: 1}
  validates :rating, numericality: { only_integer: true, allow_nil: true }, comparison: { greater_than_or_equal_to: 0, less_than: 6 }
end
