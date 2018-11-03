require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { address: @order.address, address_id: @order.address_id, client_id: @order.client_id, company_id: @order.company_id, date: @order.date, deliverynote_id: @order.deliverynote_id, discount: @order.discount, discount_id: @order.discount_id, expiration: @order.expiration, forecast_id: @order.forecast_id, gross_load: @order.gross_load, has_delivery: @order.has_delivery, has_forecast: @order.has_forecast, has_invoice: @order.has_invoice, has_order: @order.has_order, invoice_id: @order.invoice_id, net_load: @order.net_load, observations: @order.observations, order_id: @order.order_id, payment: @order.payment, receiver: @order.receiver, sender: @order.sender, tariff_code: @order.tariff_code, tax: @order.tax, tax_id: @order.tax_id, total: @order.total }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { address: @order.address, address_id: @order.address_id, client_id: @order.client_id, company_id: @order.company_id, date: @order.date, deliverynote_id: @order.deliverynote_id, discount: @order.discount, discount_id: @order.discount_id, expiration: @order.expiration, forecast_id: @order.forecast_id, gross_load: @order.gross_load, has_delivery: @order.has_delivery, has_forecast: @order.has_forecast, has_invoice: @order.has_invoice, has_order: @order.has_order, invoice_id: @order.invoice_id, net_load: @order.net_load, observations: @order.observations, order_id: @order.order_id, payment: @order.payment, receiver: @order.receiver, sender: @order.sender, tariff_code: @order.tariff_code, tax: @order.tax, tax_id: @order.tax_id, total: @order.total }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
