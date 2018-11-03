require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { administrator: @company.administrator, binary_id: @company.binary_id, cif: @company.cif, fax: @company.fax, mail: @company.mail, mobile: @company.mobile, name: @company.name, observations: @company.observations, other_telephone: @company.other_telephone, telephone: @company.telephone, web: @company.web }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { administrator: @company.administrator, binary_id: @company.binary_id, cif: @company.cif, fax: @company.fax, mail: @company.mail, mobile: @company.mobile, name: @company.name, observations: @company.observations, other_telephone: @company.other_telephone, telephone: @company.telephone, web: @company.web }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
