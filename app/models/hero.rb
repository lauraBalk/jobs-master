class Hero < ApplicationRecord
  has_one_attached :avatar
  validates :name, :life_points, :attack_points, presence: true
  validates :life_points, numericality: { less_than_or_equal_to: 120 , greater_than_or_equal_to: 100 }
  validates :attack_points, numericality: { less_than_or_equal_to: 20, greater_than_or_equal_to: 15}
  has_one :weapon
end
