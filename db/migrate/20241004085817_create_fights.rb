class CreateFights < ActiveRecord::Migration[7.0]
  def change
    create_table :fights do |t|
      t.belongs_to :winner, foreign_key: { to_table: :heros }
      t.timestamps
    end

    create_table :fight_heros do |t|
      t.references :hero, foreign_key: true
      t.references :fight, foreign_key: true
      t.references :weapon, foreign_key: true
    end
  end
end
