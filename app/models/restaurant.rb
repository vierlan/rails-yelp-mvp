class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, length: { minimum: 1}
  validates :address, length: { minimum: 1}
  validates :category, inclusion: { in: CATEGORY }
end
