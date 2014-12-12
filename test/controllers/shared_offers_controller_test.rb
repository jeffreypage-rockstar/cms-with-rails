require 'test_helper'

class SharedOffersControllerTest < ActionController::TestCase
  setup do
    @shared_offer = shared_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shared_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared_offer" do
    assert_difference('SharedOffer.count') do
      post :create, shared_offer: { datetime_accepted: @shared_offer.datetime_accepted, datetime_redeemed: @shared_offer.datetime_redeemed, is_accepted: @shared_offer.is_accepted, is_redeemed: @shared_offer.is_redeemed, offer_id: @shared_offer.offer_id, user_id: @shared_offer.user_id }
    end

    assert_redirected_to shared_offer_path(assigns(:shared_offer))
  end

  test "should show shared_offer" do
    get :show, id: @shared_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shared_offer
    assert_response :success
  end

  test "should update shared_offer" do
    patch :update, id: @shared_offer, shared_offer: { datetime_accepted: @shared_offer.datetime_accepted, datetime_redeemed: @shared_offer.datetime_redeemed, is_accepted: @shared_offer.is_accepted, is_redeemed: @shared_offer.is_redeemed, offer_id: @shared_offer.offer_id, user_id: @shared_offer.user_id }
    assert_redirected_to shared_offer_path(assigns(:shared_offer))
  end

  test "should destroy shared_offer" do
    assert_difference('SharedOffer.count', -1) do
      delete :destroy, id: @shared_offer
    end

    assert_redirected_to shared_offers_path
  end
end
