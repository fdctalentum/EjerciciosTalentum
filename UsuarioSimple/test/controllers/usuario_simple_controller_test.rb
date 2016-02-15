require 'test_helper'

class UsuarioSimpleControllerTest < ActionController::TestCase
  test "should get alta" do
    get :alta
    assert_response :success
  end

  test "should get validar" do
    get :validar
    assert_response :success
  end

end
