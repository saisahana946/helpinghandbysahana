json.extract! getter, :id, :firstname, :lastname, :contact, :location, :need, :image, :created_at, :updated_at
json.url getter_url(getter, format: :json)
