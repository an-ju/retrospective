class CreateWastes < ActiveRecord::Migration[5.2]
  def change
    create_table :wastes do |t|
      t.string :type
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
