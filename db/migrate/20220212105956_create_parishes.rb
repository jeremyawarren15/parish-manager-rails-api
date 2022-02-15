class CreateParishes < ActiveRecord::Migration[7.0]
  def change
    create_table :parishes, id: :uuid do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
