require 'test_helper'

class IngenierosControllerTest < ActionController::TestCase
  setup do
    @ingeniero = ingenieros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingenieros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingeniero" do
    assert_difference('Ingeniero.count') do
      post :create, ingeniero: { dependencia: @ingeniero.dependencia, estudios: @ingeniero.estudios, nombrecompleto: @ingeniero.nombrecompleto, proyectos_id: @ingeniero.proyectos_id }
    end

    assert_redirected_to ingeniero_path(assigns(:ingeniero))
  end

  test "should show ingeniero" do
    get :show, id: @ingeniero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingeniero
    assert_response :success
  end

  test "should update ingeniero" do
    patch :update, id: @ingeniero, ingeniero: { dependencia: @ingeniero.dependencia, estudios: @ingeniero.estudios, nombrecompleto: @ingeniero.nombrecompleto, proyectos_id: @ingeniero.proyectos_id }
    assert_redirected_to ingeniero_path(assigns(:ingeniero))
  end

  test "should destroy ingeniero" do
    assert_difference('Ingeniero.count', -1) do
      delete :destroy, id: @ingeniero
    end

    assert_redirected_to ingenieros_path
  end
end
