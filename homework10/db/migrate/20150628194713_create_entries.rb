class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :date
      t.string :location
      t.string :memory

      t.timestamps null: false
    end
  end
end
