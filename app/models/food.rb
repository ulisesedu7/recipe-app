class Food < ApplicationRecord
  # Data Relationships
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  # Data Validation
  validates :name, presence: true, length: { minimum: 2, maximum: 250 }
  validates :measurement_unit, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
