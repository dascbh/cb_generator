require 'test_helper'

class MainPanelsControllerTest < ActionController::TestCase
  setup do
    @main_panel = main_panels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_panels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_panel" do
    assert_difference('MainPanel.count') do
      post :create, main_panel: {  }
    end

    assert_redirected_to main_panel_path(assigns(:main_panel))
  end

  test "should show main_panel" do
    get :show, id: @main_panel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_panel
    assert_response :success
  end

  test "should update main_panel" do
    patch :update, id: @main_panel, main_panel: {  }
    assert_redirected_to main_panel_path(assigns(:main_panel))
  end

  test "should destroy main_panel" do
    assert_difference('MainPanel.count', -1) do
      delete :destroy, id: @main_panel
    end

    assert_redirected_to main_panels_path
  end
end
