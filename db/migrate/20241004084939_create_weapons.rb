class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.integer :damage
      t.integer :shield
      t.string :name
      t.references :hero, foreign_key: true
      t.timestamps
    end
  end
end
