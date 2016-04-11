class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.float :amount
      t.integer :type
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
