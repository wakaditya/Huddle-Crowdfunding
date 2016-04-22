class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :tag
      t.float :collection
      t.datetime :funding_deadline
      t.date :event_date
      t.integer :rating
      t.string :location
      t.string :ticket

      t.timestamps null: false
    end
  end
end
