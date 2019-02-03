json.extract! customer_account, :id, :firstName, :lastName, :birthday, :orders_id, :accountable_id, :accountable_type, :created_at, :updated_at
json.url customer_account_url(customer_account, format: :json)
