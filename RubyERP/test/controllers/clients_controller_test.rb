require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { alias: @client.alias, cif: @client.cif, client_type: @client.client_type, company_id: @client.company_id, currency: @client.currency, discount_id: @client.discount_id, documents_language: @client.documents_language, fax: @client.fax, incoterm: @client.incoterm, incoterm_location: @client.incoterm_location, mail: @client.mail, method_of_payment: @client.method_of_payment, mobile: @client.mobile, name: @client.name, observations: @client.observations, other_telefono: @client.other_telefono, payment_period: @client.payment_period, tax_id: @client.tax_id, telephone: @client.telephone, web: @client.web }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { alias: @client.alias, cif: @client.cif, client_type: @client.client_type, company_id: @client.company_id, currency: @client.currency, discount_id: @client.discount_id, documents_language: @client.documents_language, fax: @client.fax, incoterm: @client.incoterm, incoterm_location: @client.incoterm_location, mail: @client.mail, method_of_payment: @client.method_of_payment, mobile: @client.mobile, name: @client.name, observations: @client.observations, other_telefono: @client.other_telefono, payment_period: @client.payment_period, tax_id: @client.tax_id, telephone: @client.telephone, web: @client.web }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
