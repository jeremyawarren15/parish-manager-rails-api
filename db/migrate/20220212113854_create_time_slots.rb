class CreateTimeSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :time_slots, id: :uuid do |t|
      t.integer :day
      t.integer :hour
      t.string :location
      t.integer :minimum
      t.belongs_to :parish, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
