json.array!(@taxes) do |tax|
  json.extract! tax, :id, :tax, :description, :company_id, :default
  json.url tax_url(tax, format: :json)
end
