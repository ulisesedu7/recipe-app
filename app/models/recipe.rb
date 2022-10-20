class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 250 }
  validates :preparation_time, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :cooking_time, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { minimum: 2, maximum: 9999 }

  def total_cost
    total = 0
    recipe_foods.includes(:food).each do |recipe_food|
      total += recipe_food.quantity * recipe_food.food.price
    end
    total.round(2)
  end
end
