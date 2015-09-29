class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.text :description
      t.integer :bulk_quantity
      t.decimal :price
      t.datetime :last_ordered
      t.boolean :stock_item

      t.timestamps null: false
    end
  end
end
