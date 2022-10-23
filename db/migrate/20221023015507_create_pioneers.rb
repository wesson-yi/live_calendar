class CreatePioneers < ActiveRecord::Migration[7.0]
  def change
    create_table :pioneers do |t|
      t.string :name

      t.timestamps
    end
  end
end
