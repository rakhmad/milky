class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :buy_price
      t.decimal :sell_price
      t.references :catalog

      t.timestamps
    end
    add_index :products, :catalog_id
  end
end
