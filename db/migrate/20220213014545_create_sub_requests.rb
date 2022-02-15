class CreateSubRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_requests, id: :uuid do |t|
      t.belongs_to :commitment, null: false, foreign_key: true, type: :uuid
      t.belongs_to :user, null: true, foreign_key: true, type: :uuid
      t.date :date

      t.timestamps
    end
  end
end
