class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :nick
      t.integer :r1
      t.integer :r2
      t.integer :r3
      t.integer :r4
      t.integer :r5
      t.integer :r6
      t.references :tournament, index: true

      t.timestamps
    end
  end
end
