class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
    add_column :orders, :buyer_id, :integer
    add_foreign_key :orders, :users, column: :buyer_id
  end
end
