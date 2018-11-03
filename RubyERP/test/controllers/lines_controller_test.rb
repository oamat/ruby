require 'test_helper'

class LinesControllerTest < ActionController::TestCase
  setup do
    @line = lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line" do
    assert_difference('Line.count') do
      post :create, line: { client_id: @line.client_id, company_id: @line.company_id, deliverynote_id: @line.deliverynote_id, description: @line.description, discount: @line.discount, discount_id: @line.discount_id, forecast_id: @line.forecast_id, invoice_id: @line.invoice_id, name: @line.name, order_id: @line.order_id, price: @line.price, quantity: @line.quantity, tax: @line.tax, tax_id: @line.tax_id, total: @line.total }
    end

    assert_redirected_to line_path(assigns(:line))
  end

  test "should show line" do
    get :show, id: @line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line
    assert_response :success
  end

  test "should update line" do
    patch :update, id: @line, line: { client_id: @line.client_id, company_id: @line.company_id, deliverynote_id: @line.deliverynote_id, description: @line.description, discount: @line.discount, discount_id: @line.discount_id, forecast_id: @line.forecast_id, invoice_id: @line.invoice_id, name: @line.name, order_id: @line.order_id, price: @line.price, quantity: @line.quantity, tax: @line.tax, tax_id: @line.tax_id, total: @line.total }
    assert_redirected_to line_path(assigns(:line))
  end

  test "should destroy line" do
    assert_difference('Line.count', -1) do
      delete :destroy, id: @line
    end

    assert_redirected_to lines_path
  end
end
