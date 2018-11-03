json.array!(@clients) do |client|
  json.extract! client, :id, :company_id, :name, :alias, :cif, :telephone, :other_telefono, :mobile, :fax, :mail, :web, :observations, :incoterm, :incoterm_location, :method_of_payment, :payment_period, :documents_language, :client_type, :currency, :tax_id, :discount_id
  json.url client_url(client, format: :json)
end
