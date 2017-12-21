class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :ship_first_name
      t.string :ship_last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :order_status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
