class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :actual_price
      t.decimal :final_price

      t.timestamps
    end
  end
end
