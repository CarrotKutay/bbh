json.extract! account, :id, :address_id, :iban, :username, :password, :accountable_id, :accountable_type, :created_at, :updated_at
json.url account_url(account, format: :json)
