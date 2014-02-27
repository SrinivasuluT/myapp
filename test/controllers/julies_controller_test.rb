require 'test_helper'

class JuliesControllerTest < ActionController::TestCase
  setup do
    @july = julies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:julies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create july" do
    assert_difference('July.count') do
      post :create, july: { day: @july.day, month: @july.month }
    end

    assert_redirected_to july_path(assigns(:july))
  end

  test "should show july" do
    get :show, id: @july
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @july
    assert_response :success
  end

  test "should update july" do
    patch :update, id: @july, july: { day: @july.day, month: @july.month }
    assert_redirected_to july_path(assigns(:july))
  end

  test "should destroy july" do
    assert_difference('July.count', -1) do
      delete :destroy, id: @july
    end

    assert_redirected_to julies_path
  end
end
