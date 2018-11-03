require 'test_helper'

class ForecastsControllerTest < ActionController::TestCase
  setup do
    @forecast = forecasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forecasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forecast" do
    assert_difference('Forecast.count') do
      post :create, forecast: { address: @forecast.address, address_id: @forecast.address_id, client_id: @forecast.client_id, company_id: @forecast.company_id, date: @forecast.date, deliverynote_id: @forecast.deliverynote_id, discount: @forecast.discount, discount_id: @forecast.discount_id, expiration: @forecast.expiration, forecast_id: @forecast.forecast_id, gross_load: @forecast.gross_load, has_delivery: @forecast.has_delivery, has_forecast: @forecast.has_forecast, has_invoice: @forecast.has_invoice, has_order: @forecast.has_order, invoice_id: @forecast.invoice_id, net_load: @forecast.net_load, observations: @forecast.observations, order_id: @forecast.order_id, payment: @forecast.payment, receiver: @forecast.receiver, sender: @forecast.sender, tariff_code: @forecast.tariff_code, tax: @forecast.tax, tax_id: @forecast.tax_id, total: @forecast.total }
    end

    assert_redirected_to forecast_path(assigns(:forecast))
  end

  test "should show forecast" do
    get :show, id: @forecast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forecast
    assert_response :success
  end

  test "should update forecast" do
    patch :update, id: @forecast, forecast: { address: @forecast.address, address_id: @forecast.address_id, client_id: @forecast.client_id, company_id: @forecast.company_id, date: @forecast.date, deliverynote_id: @forecast.deliverynote_id, discount: @forecast.discount, discount_id: @forecast.discount_id, expiration: @forecast.expiration, forecast_id: @forecast.forecast_id, gross_load: @forecast.gross_load, has_delivery: @forecast.has_delivery, has_forecast: @forecast.has_forecast, has_invoice: @forecast.has_invoice, has_order: @forecast.has_order, invoice_id: @forecast.invoice_id, net_load: @forecast.net_load, observations: @forecast.observations, order_id: @forecast.order_id, payment: @forecast.payment, receiver: @forecast.receiver, sender: @forecast.sender, tariff_code: @forecast.tariff_code, tax: @forecast.tax, tax_id: @forecast.tax_id, total: @forecast.total }
    assert_redirected_to forecast_path(assigns(:forecast))
  end

  test "should destroy forecast" do
    assert_difference('Forecast.count', -1) do
      delete :destroy, id: @forecast
    end

    assert_redirected_to forecasts_path
  end
end
