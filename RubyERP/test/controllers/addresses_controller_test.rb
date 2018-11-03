require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { city: @address.city, client_id: @address.client_id, company_id: @address.company_id, contact_id: @address.contact_id, country: @address.country, default_client: @address.default_client, default_company: @address.default_company, description: @address.description, direction: @address.direction, name: @address.name, post_office: @address.post_office, postal_code: @address.postal_code, province: @address.province, type: @address.type }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { city: @address.city, client_id: @address.client_id, company_id: @address.company_id, contact_id: @address.contact_id, country: @address.country, default_client: @address.default_client, default_company: @address.default_company, description: @address.description, direction: @address.direction, name: @address.name, post_office: @address.post_office, postal_code: @address.postal_code, province: @address.province, type: @address.type }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
