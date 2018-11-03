require 'test_helper'

class DeliverynotesControllerTest < ActionController::TestCase
  setup do
    @deliverynote = deliverynotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deliverynotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deliverynote" do
    assert_difference('Deliverynote.count') do
      post :create, deliverynote: { address: @deliverynote.address, address_id: @deliverynote.address_id, client_id: @deliverynote.client_id, company_id: @deliverynote.company_id, date: @deliverynote.date, deliverynote_id: @deliverynote.deliverynote_id, discount: @deliverynote.discount, discount_id: @deliverynote.discount_id, expiration: @deliverynote.expiration, forecast_id: @deliverynote.forecast_id, gross_load: @deliverynote.gross_load, has_delivery: @deliverynote.has_delivery, has_forecast: @deliverynote.has_forecast, has_invoice: @deliverynote.has_invoice, has_order: @deliverynote.has_order, invoice_id: @deliverynote.invoice_id, net_load: @deliverynote.net_load, observations: @deliverynote.observations, order_id: @deliverynote.order_id, payment: @deliverynote.payment, receiver: @deliverynote.receiver, sender: @deliverynote.sender, tariff_code: @deliverynote.tariff_code, tax: @deliverynote.tax, tax_id: @deliverynote.tax_id, total: @deliverynote.total }
    end

    assert_redirected_to deliverynote_path(assigns(:deliverynote))
  end

  test "should show deliverynote" do
    get :show, id: @deliverynote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deliverynote
    assert_response :success
  end

  test "should update deliverynote" do
    patch :update, id: @deliverynote, deliverynote: { address: @deliverynote.address, address_id: @deliverynote.address_id, client_id: @deliverynote.client_id, company_id: @deliverynote.company_id, date: @deliverynote.date, deliverynote_id: @deliverynote.deliverynote_id, discount: @deliverynote.discount, discount_id: @deliverynote.discount_id, expiration: @deliverynote.expiration, forecast_id: @deliverynote.forecast_id, gross_load: @deliverynote.gross_load, has_delivery: @deliverynote.has_delivery, has_forecast: @deliverynote.has_forecast, has_invoice: @deliverynote.has_invoice, has_order: @deliverynote.has_order, invoice_id: @deliverynote.invoice_id, net_load: @deliverynote.net_load, observations: @deliverynote.observations, order_id: @deliverynote.order_id, payment: @deliverynote.payment, receiver: @deliverynote.receiver, sender: @deliverynote.sender, tariff_code: @deliverynote.tariff_code, tax: @deliverynote.tax, tax_id: @deliverynote.tax_id, total: @deliverynote.total }
    assert_redirected_to deliverynote_path(assigns(:deliverynote))
  end

  test "should destroy deliverynote" do
    assert_difference('Deliverynote.count', -1) do
      delete :destroy, id: @deliverynote
    end

    assert_redirected_to deliverynotes_path
  end
end
