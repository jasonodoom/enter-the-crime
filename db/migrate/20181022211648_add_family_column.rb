class AddFamilyColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :family_relationship, :string
  end
end
