class AddDefaultValueToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :is_seller, :boolean, default: false
  end
end
