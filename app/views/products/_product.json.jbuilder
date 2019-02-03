json.extract! product, :id, :name, :measurement, :price, :productable_id, :productable_type, :created_at, :updated_at
json.url product_url(product, format: :json)
