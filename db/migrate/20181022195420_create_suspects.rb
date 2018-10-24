class CreateSuspects < ActiveRecord::Migration[5.0]
  def change
    create_table :suspects do |t|
      t.string :name
      t.string :sex
      t.string :family_relationship
      t.string :description
      t.boolean :guilty, default: false
    end
  end
end
