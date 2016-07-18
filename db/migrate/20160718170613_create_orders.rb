class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, null: false
      t.references :candy, index: true, null: false
      t.integer :amount, null: false

      t.timestamps null: false
    end
  end
end
