class Fight < ApplicationRecord
  has_many :fight_heros
  has_many :heros, through: :fight_heros
  belongs_to :winner, class_name: "Hero", optional: true

  accepts_nested_attributes_for :fight_heros, reject_if: :all_blank, allow_destroy: true

  validates :fight_heros, length: { minimum: 2, maximum: 2 }

  after_create_commit :launch

  def launch
    fhs = fight_heros.shuffle
    fh1 = fhs.first
    fh2 = fhs.last
    damage = fh1.hero.attack_points + fh1&.weapon&.damage.to_i
    Attack.create!(damage: damage, fight_hero: fh2)
    life_points = fh2.hero.life_points - fh2.attacks.sum(:damage)
    if life_points <= 0
      self.winner = fh1.hero
      self.save
      return true
    else
      self.launch()
    end
  end
end
