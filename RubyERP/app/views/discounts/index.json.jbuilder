json.array!(@discounts) do |discount|
  json.extract! discount, :id, :discount, :description, :company_id, :default
  json.url discount_url(discount, format: :json)
end
