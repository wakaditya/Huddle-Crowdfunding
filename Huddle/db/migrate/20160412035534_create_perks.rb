class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.float :amount
      t.integer :p_type
      t.string :description
      t.references :user

      t.timestamps null: false
    end
  end
end
