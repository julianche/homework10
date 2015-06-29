class AddTripToEntries < ActiveRecord::Migration
  def change
    add_reference :entries, :trip, index: true, foreign_key: true
  end
end
