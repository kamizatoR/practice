class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|

      t.timestamps
      t.string :name, null: false
      t.string :email, null: false
    end
  end
end
