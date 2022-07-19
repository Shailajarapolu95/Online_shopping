class Renamecheckstatustoorderstatus < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :check_status, :order_status
  end
end
