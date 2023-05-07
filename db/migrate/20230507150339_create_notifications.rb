class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|

      t.timestamps
      t.integer :visiter_id
      t.integer :visited_id
      t.integer :post_id
      t.integer :like_id
      t.string :action
      t.boolean :checked, default: false, null: false 
    end
  end
end
