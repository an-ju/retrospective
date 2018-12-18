class CreateActionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :action_items do |t|
      t.string :name
      t.text :content
      t.integer :state
      t.text :comment

      t.timestamps
    end
  end
end
