class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps
    end
    add_index :goals, :title
    add_index :goals, :user_id
  end
end
