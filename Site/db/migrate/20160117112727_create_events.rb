class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.float :collection
      t.date :funding_deadline

      t.timestamps null: false
    end
  end
end
