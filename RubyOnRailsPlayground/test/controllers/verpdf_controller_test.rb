require 'test_helper'

class VerpdfControllerTest < ActionController::TestCase
  test "should get generar" do
    get :generar
    assert_response :success
  end

end
