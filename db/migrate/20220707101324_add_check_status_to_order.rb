class AddCheckStatusToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :check_status, :string
  end
end
