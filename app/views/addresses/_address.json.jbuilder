json.extract! address, :id, :name, :country, :city, :postalCode, :street, :streetNr, :account_id, :addressable_id, :addressable_type, :created_at, :updated_at
json.url address_url(address, format: :json)
