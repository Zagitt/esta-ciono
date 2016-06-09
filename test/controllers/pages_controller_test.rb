require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get nosotros" do
    get :nosotros
    assert_response :success
  end

  test "should get reserva" do
    get :reserva
    assert_response :success
  end

  test "should get confirmacion" do
    get :confirmacion
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
