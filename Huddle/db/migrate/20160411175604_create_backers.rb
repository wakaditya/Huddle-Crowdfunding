class CreateBackers < ActiveRecord::Migration
  def change
    create_table :backers do |t|
      t.integer :paid_amount
      t.integer :perk_level
      t.belongs_to :user
      t.belongs_to :event
      t.timestamps null: false
    end
  end
end
