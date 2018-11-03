json.array!(@accounts) do |account|
  json.extract! account, :id, :iban, :description, :account_holder, :client_id, :default
  json.url account_url(account, format: :json)
end
