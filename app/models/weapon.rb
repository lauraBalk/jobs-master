class Weapon < ApplicationRecord
  belongs_to :hero
  validates :damage, :shield, numericality: { less_than_or_equal_to: 5 , greater_than_or_equal_to: 1 }
  validates :name, presence: true
end
