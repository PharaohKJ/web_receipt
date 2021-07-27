json.extract! receipt, :id, :no, :billing_date, :customer_name, :price, :proviso, :issuer_name, :issuer_address, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
