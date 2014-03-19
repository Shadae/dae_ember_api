class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :cart_id
      t.string :name
      t.string :email
      t.string :zip
      t.string :expiration
      t.string :status
      t.string :cvv

      t.timestamps
    end
  end
end
