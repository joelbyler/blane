json.array!(@widgets) do |widget|
  json.extract! widget, :id, :name, :description, :bulk_quantity, :price, :last_ordered, :stock_item
  json.url widget_url(widget, format: :json)
end
