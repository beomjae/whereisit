json.extract! item, :id, :name, :latitude, :longitude, :user_id, :category_id, :created_at, :updated_at
json.url item_url(item, format: :json)