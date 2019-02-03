json.extract! order, :id, :orderConfirmationNumber, :ordered, :shipped, :orderedItems, :shippingAddress, :status, :price, :created_at, :updated_at
json.url order_url(order, format: :json)
