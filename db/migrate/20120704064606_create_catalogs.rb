class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name
      t.date :begin
      t.date :end
      t.boolean :status

      t.timestamps
    end
  end
end
