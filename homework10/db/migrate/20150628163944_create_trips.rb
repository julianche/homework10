class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :dates
      t.string :region

      t.timestamps null: false
    end
  end
end
