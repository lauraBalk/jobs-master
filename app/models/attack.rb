class Attack < ApplicationRecord
  belongs_to :combat
  belongs_to :hero
end
