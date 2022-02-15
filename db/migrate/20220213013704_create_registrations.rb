class CreateRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :registrations, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.belongs_to :parish, null: false, foreign_key: true, type: :uuid
      t.boolean :registered
      t.boolean :admin

      t.timestamps
    end
  end
end
