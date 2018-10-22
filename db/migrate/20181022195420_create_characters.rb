class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :decription
      t.boolean :guilty, default: false
    end
  end
end
