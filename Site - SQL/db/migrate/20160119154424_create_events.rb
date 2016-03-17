class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.date :funding_deadline
      t.integer :funding_goal
      t.integer :collections
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
