class AddPlayerAndCharacterId < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :played_id, :integer
    add_column :locations, :character_id, :integer
  end
end
