class CreateRivalries < ActiveRecord::Migration
  def change
    create_table :rivalries do |t|
      t.references :person, index: true, foreign_key: true
      t.integer :rival_id, index: true

      t.timestamps null: false
    end
  end
end
