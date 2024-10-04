class FightHero < ApplicationRecord
  belongs_to :fight
  belongs_to :hero
  belongs_to :weapon, optional: :true
  has_many :attacks

end
