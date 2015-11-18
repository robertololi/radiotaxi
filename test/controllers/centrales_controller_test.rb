require 'test_helper'

class CentralesControllerTest < ActionController::TestCase
  setup do
    @centrale = centrales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centrales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centrale" do
    assert_difference('Centrale.count') do
      post :create, centrale: { comuna: @centrale.comuna, correo: @centrale.correo, direccion: @centrale.direccion, id_central: @centrale.id_central, responsable: @centrale.responsable, telefono: @centrale.telefono }
    end

    assert_redirected_to centrale_path(assigns(:centrale))
  end

  test "should show centrale" do
    get :show, id: @centrale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centrale
    assert_response :success
  end

  test "should update centrale" do
    patch :update, id: @centrale, centrale: { comuna: @centrale.comuna, correo: @centrale.correo, direccion: @centrale.direccion, id_central: @centrale.id_central, responsable: @centrale.responsable, telefono: @centrale.telefono }
    assert_redirected_to centrale_path(assigns(:centrale))
  end

  test "should destroy centrale" do
    assert_difference('Centrale.count', -1) do
      delete :destroy, id: @centrale
    end

    assert_redirected_to centrales_path
  end
end
