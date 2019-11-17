json.extract! content_type, :id, :name, :description, :file_types, :created_at, :updated_at
json.url content_type_url(content_type, format: :json)
