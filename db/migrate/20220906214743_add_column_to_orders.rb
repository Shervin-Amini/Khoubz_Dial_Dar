class AddColumnToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :quantity, :integer
    add_column :orders, :customization_message, :text
  end
end
