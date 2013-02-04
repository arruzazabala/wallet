require 'test_helper'

class ConceptosControllerTest < ActionController::TestCase
  setup do
    @concepto = conceptos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conceptos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concepto" do
    assert_difference('Concepto.count') do
      post :create, concepto: { descripcion: @concepto.descripcion, es_egreso: @concepto.es_egreso, es_ingreso: @concepto.es_ingreso }
    end

    assert_redirected_to concepto_path(assigns(:concepto))
  end

  test "should show concepto" do
    get :show, id: @concepto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concepto
    assert_response :success
  end

  test "should update concepto" do
    put :update, id: @concepto, concepto: { descripcion: @concepto.descripcion, es_egreso: @concepto.es_egreso, es_ingreso: @concepto.es_ingreso }
    assert_redirected_to concepto_path(assigns(:concepto))
  end

  test "should destroy concepto" do
    assert_difference('Concepto.count', -1) do
      delete :destroy, id: @concepto
    end

    assert_redirected_to conceptos_path
  end
end
