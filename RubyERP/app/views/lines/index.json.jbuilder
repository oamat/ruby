json.array!(@lines) do |line|
  json.extract! line, :id, :company_id, :client_id, :invoice_id, :order_id, :deliverynote_id, :forecast_id, :name, :price, :quantity, :discount_id, :discount, :tax_id, :tax, :description, :total
  json.url line_url(line, format: :json)
end
