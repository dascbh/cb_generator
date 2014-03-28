require 'test_helper'

class PlataformsControllerTest < ActionController::TestCase
  setup do
    @plataform = plataforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plataforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plataform" do
    assert_difference('Plataform.count') do
      post :create, plataform: { name: @plataform.name }
    end

    assert_redirected_to plataform_path(assigns(:plataform))
  end

  test "should show plataform" do
    get :show, id: @plataform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plataform
    assert_response :success
  end

  test "should update plataform" do
    patch :update, id: @plataform, plataform: { name: @plataform.name }
    assert_redirected_to plataform_path(assigns(:plataform))
  end

  test "should destroy plataform" do
    assert_difference('Plataform.count', -1) do
      delete :destroy, id: @plataform
    end

    assert_redirected_to plataforms_path
  end
end
