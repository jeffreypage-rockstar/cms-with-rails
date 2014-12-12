require 'test_helper'

class MerchantFollowersControllerTest < ActionController::TestCase
  setup do
    @merchant_follower = merchant_followers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merchant_followers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merchant_follower" do
    assert_difference('MerchantFollower.count') do
      post :create, merchant_follower: { merchant_id: @merchant_follower.merchant_id, user_id: @merchant_follower.user_id }
    end

    assert_redirected_to merchant_follower_path(assigns(:merchant_follower))
  end

  test "should show merchant_follower" do
    get :show, id: @merchant_follower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merchant_follower
    assert_response :success
  end

  test "should update merchant_follower" do
    patch :update, id: @merchant_follower, merchant_follower: { merchant_id: @merchant_follower.merchant_id, user_id: @merchant_follower.user_id }
    assert_redirected_to merchant_follower_path(assigns(:merchant_follower))
  end

  test "should destroy merchant_follower" do
    assert_difference('MerchantFollower.count', -1) do
      delete :destroy, id: @merchant_follower
    end

    assert_redirected_to merchant_followers_path
  end
end
