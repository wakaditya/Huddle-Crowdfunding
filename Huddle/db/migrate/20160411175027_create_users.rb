class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :address
      t.string :name
      t.string :email
      t.string :password
      t.string :contact

      t.timestamps null: false
    end
  end
end
