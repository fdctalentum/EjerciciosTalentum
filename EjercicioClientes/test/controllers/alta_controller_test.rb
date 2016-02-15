require 'test_helper'

class AltaControllerTest < ActionController::TestCase
  test "should get detalle" do
    get :detalle
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
