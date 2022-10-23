class CreatePartTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :part_times do |t|
      t.time :start_at
      t.string :duration

      t.timestamps
    end
  end
end
