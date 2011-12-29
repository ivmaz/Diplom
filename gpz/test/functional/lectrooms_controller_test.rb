require 'test_helper'

class LectroomsControllerTest < ActionController::TestCase
  setup do
    @lectroom = lectrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lectrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lectroom" do
    assert_difference('Lectroom.count') do
      post :create, :lectroom => @lectroom.attributes
    end

    assert_redirected_to lectroom_path(assigns(:lectroom))
  end

  test "should show lectroom" do
    get :show, :id => @lectroom.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lectroom.to_param
    assert_response :success
  end

  test "should update lectroom" do
    put :update, :id => @lectroom.to_param, :lectroom => @lectroom.attributes
    assert_redirected_to lectroom_path(assigns(:lectroom))
  end

  test "should destroy lectroom" do
    assert_difference('Lectroom.count', -1) do
      delete :destroy, :id => @lectroom.to_param
    end

    assert_redirected_to lectrooms_path
  end
end
