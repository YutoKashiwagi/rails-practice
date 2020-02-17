json.extract! item, :id, :saler_id, :title, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
