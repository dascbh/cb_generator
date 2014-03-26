require 'test_helper'

class CookbooksControllerTest < ActionController::TestCase
  setup do
    @cookbook = cookbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cookbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cookbook" do
    assert_difference('Cookbook.count') do
      post :create, cookbook: { aix: @cookbook.aix, comments: @cookbook.comments, current_version: @cookbook.current_version, description: @cookbook.description, has_template: @cookbook.has_template, linux: @cookbook.linux, metadata_id: @cookbook.metadata_id, name: @cookbook.name, node_id: @cookbook.node_id, released: @cookbook.released, role_id: @cookbook.role_id, template_id: @cookbook.template_id, windows: @cookbook.windows }
    end

    assert_redirected_to cookbook_path(assigns(:cookbook))
  end

  test "should show cookbook" do
    get :show, id: @cookbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cookbook
    assert_response :success
  end

  test "should update cookbook" do
    patch :update, id: @cookbook, cookbook: { aix: @cookbook.aix, comments: @cookbook.comments, current_version: @cookbook.current_version, description: @cookbook.description, has_template: @cookbook.has_template, linux: @cookbook.linux, metadata_id: @cookbook.metadata_id, name: @cookbook.name, node_id: @cookbook.node_id, released: @cookbook.released, role_id: @cookbook.role_id, template_id: @cookbook.template_id, windows: @cookbook.windows }
    assert_redirected_to cookbook_path(assigns(:cookbook))
  end

  test "should destroy cookbook" do
    assert_difference('Cookbook.count', -1) do
      delete :destroy, id: @cookbook
    end

    assert_redirected_to cookbooks_path
  end
end
