class WidgetNotNulCols < ActiveRecord::Migration
  def change
      # Make sure no null value exist
    Widget.update_all(name: 'Incomplete', name: nil)
    Widget.update_all(description: 'Incomplete', description: nil)
    Widget.update_all(price: 'Incomplete', price: nil)

    # Change the column to not allow null
    change_column :widgets, :name, :string, :null => false
    change_column :widgets, :description, :text, :null => false
    change_column :widgets, :price, :decimal, :null => false
  end
end
