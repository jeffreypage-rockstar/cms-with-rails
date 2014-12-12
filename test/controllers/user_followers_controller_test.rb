require 'test_helper'

class UserFollowersControllerTest < ActionController::TestCase
  setup do
    @user_follower = user_followers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_followers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_follower" do
    assert_difference('UserFollower.count') do
      post :create, user_follower: { follower: @user_follower.follower, user_id: @user_follower.user_id }
    end

    assert_redirected_to user_follower_path(assigns(:user_follower))
  end

  test "should show user_follower" do
    get :show, id: @user_follower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_follower
    assert_response :success
  end

  test "should update user_follower" do
    patch :update, id: @user_follower, user_follower: { follower: @user_follower.follower, user_id: @user_follower.user_id }
    assert_redirected_to user_follower_path(assigns(:user_follower))
  end

  test "should destroy user_follower" do
    assert_difference('UserFollower.count', -1) do
      delete :destroy, id: @user_follower
    end

    assert_redirected_to user_followers_path
  end
end
