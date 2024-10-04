class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.integer :damage
      t.integer :shield
      t.string :name
      t.timestamps
    end
  end
end
