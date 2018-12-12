class ReplaceTypeFieldOfWastes < ActiveRecord::Migration[5.2]
  def change
    rename_column :wastes, :type, :waste_type
  end
end
