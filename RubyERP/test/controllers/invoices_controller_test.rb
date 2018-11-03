require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { address: @invoice.address, address_id: @invoice.address_id, client_id: @invoice.client_id, company_id: @invoice.company_id, date: @invoice.date, deliverynote_id: @invoice.deliverynote_id, discount: @invoice.discount, discount_id: @invoice.discount_id, expiration: @invoice.expiration, forecast_id: @invoice.forecast_id, gross_load: @invoice.gross_load, has_delivery: @invoice.has_delivery, has_forecast: @invoice.has_forecast, has_invoice: @invoice.has_invoice, has_order: @invoice.has_order, invoice_id: @invoice.invoice_id, net_load: @invoice.net_load, observations: @invoice.observations, order_id: @invoice.order_id, payment: @invoice.payment, receiver: @invoice.receiver, sender: @invoice.sender, tariff_code: @invoice.tariff_code, tax: @invoice.tax, tax_id: @invoice.tax_id, total: @invoice.total }
    end

    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { address: @invoice.address, address_id: @invoice.address_id, client_id: @invoice.client_id, company_id: @invoice.company_id, date: @invoice.date, deliverynote_id: @invoice.deliverynote_id, discount: @invoice.discount, discount_id: @invoice.discount_id, expiration: @invoice.expiration, forecast_id: @invoice.forecast_id, gross_load: @invoice.gross_load, has_delivery: @invoice.has_delivery, has_forecast: @invoice.has_forecast, has_invoice: @invoice.has_invoice, has_order: @invoice.has_order, invoice_id: @invoice.invoice_id, net_load: @invoice.net_load, observations: @invoice.observations, order_id: @invoice.order_id, payment: @invoice.payment, receiver: @invoice.receiver, sender: @invoice.sender, tariff_code: @invoice.tariff_code, tax: @invoice.tax, tax_id: @invoice.tax_id, total: @invoice.total }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end
