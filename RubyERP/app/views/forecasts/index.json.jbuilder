json.array!(@forecasts) do |forecast|
  json.extract! forecast, :id, :company_id, :client_id, :address_id, :address, :tax_id, :tax, :discount_id, :discount, :payment, :date, :observations, :expiration, :total, :tariff_code, :gross_load, :net_load, :receiver, :sender, :has_invoice, :has_forecast, :has_order, :has_delivery, :invoice_id, :forecast_id, :order_id, :deliverynote_id
  json.url forecast_url(forecast, format: :json)
end
