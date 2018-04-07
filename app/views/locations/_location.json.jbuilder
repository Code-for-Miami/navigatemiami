json.extract! location, :id, :name, :url, :address1, :address2, :city, :state, :zip, :phone, :email, :created_at, :updated_at
json.url location_url(location, format: :json)
