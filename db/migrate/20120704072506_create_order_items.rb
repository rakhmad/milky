class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :amount
      t.references :order
      t.references :product

      t.timestamps
    end
    add_index :order_items, :order_id
    add_index :order_items, :product_id
  end
end
