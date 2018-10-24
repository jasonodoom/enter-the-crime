class CreateInterrogations < ActiveRecord::Migration[5.0]
  def change
    create_table :interrogations do |t|
      t.string :suspect_id
      t.string :room
      t.boolean :complete, default: false
    end
  end
end
