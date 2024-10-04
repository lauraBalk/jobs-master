class CreateAttacks < ActiveRecord::Migration[7.0]
  def change
    create_table :attacks do |t|

      t.timestamps
    end
  end
end
