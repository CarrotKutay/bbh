json.extract! account, :id, :username, :password, :email, :address_id, :iban, :accountable_id, :accountable_type, :created_at, :updated_at
json.url account_url(account, format: :json)
