json.extract! item, :id, :title, :image, :category_id, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
