json.extract! content, :id, :title, :order, :chapter_id, :content_type_id, :created_at, :updated_at
json.url content_url(content, format: :json)
