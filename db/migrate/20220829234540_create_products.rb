class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
    add_column :products, :seller_id, :integer
    add_foreign_key :products, :users, column: :seller_id
  end
end
