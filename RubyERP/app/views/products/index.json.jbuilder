json.array!(@products) do |product|
  json.extract! product, :id, :name, :barcode, :description, :price, :lead_time, :company_id, :tax_id, :discount_id, :stock, :stock_active, :active
  json.url product_url(product, format: :json)
end
