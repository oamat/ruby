json.array!(@addresses) do |address|
  json.extract! address, :id, :name, :direction, :postal_code, :city, :province, :country, :post_office, :type, :description, :client_id, :default_client, :company_id, :default_company, :contact_id
  json.url address_url(address, format: :json)
end
