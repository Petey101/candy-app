class CreateCandies < ActiveRecord::Migration
  def change
    create_table :candies do |t|
    	t.text :images, array: true, default: []
    	t.text :description, null: false
    	t.decimal :price, precision: 4, scale: 2
    	t.text :nutritional_facts
    	t.integer :SKU, null: false

      t.timestamps null: false
    end
  end
end
