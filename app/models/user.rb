class User < ApplicationRecord
  # Data Relationships
  has_many :recipes, foreign_key: 'user_id', dependent: :destroy
  has_many :foods, foreign_key: 'user_id', dependent: :destroy

  # Data Validation
  validates :name, presence: true, length: { minimum: 2, maximum: 250 }
end
