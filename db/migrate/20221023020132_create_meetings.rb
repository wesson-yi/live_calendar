class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.date :date
      t.references :part_time, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: true
      t.references :pioneer, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
