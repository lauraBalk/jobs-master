class Fight < ApplicationRecord
  has_many :heros
  belongs_to :winner, class_name: "Hero", optional: true
end
