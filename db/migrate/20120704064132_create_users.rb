class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.text :address
      t.boolean :status

      t.timestamps
    end
  end
end
