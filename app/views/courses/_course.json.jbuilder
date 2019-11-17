json.extract! course, :id, :name, :subtitle, :description, :price, :duration, :created_at, :updated_at
json.url course_url(course, format: :json)
