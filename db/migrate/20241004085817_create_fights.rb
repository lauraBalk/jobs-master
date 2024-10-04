class CreateFights < ActiveRecord::Migration[7.0]
  def change
    create_table :fights do |t|
      t.belongs_to :winner, foreign_key: { to_table: :heros }
      t.timestamps
    end
  end
end
