json.extract! address, :id, :name, :country, :city, :postalCode, :street, :streetNr, :created_at, :updated_at
json.url address_url(address, format: :json)
