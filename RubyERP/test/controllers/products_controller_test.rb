require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { active: @product.active, barcode: @product.barcode, company_id: @product.company_id, description: @product.description, discount_id: @product.discount_id, lead_time: @product.lead_time, name: @product.name, price: @product.price, stock: @product.stock, stock_active: @product.stock_active, tax_id: @product.tax_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { active: @product.active, barcode: @product.barcode, company_id: @product.company_id, description: @product.description, discount_id: @product.discount_id, lead_time: @product.lead_time, name: @product.name, price: @product.price, stock: @product.stock, stock_active: @product.stock_active, tax_id: @product.tax_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
