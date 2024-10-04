class CreateAttacks < ActiveRecord::Migration[7.0]
  def change
    create_table :attacks do |t|
      t.integer :damage
      t.references :fight_hero, foreign_key: true
      t.timestamps
    end
  end
end
