require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post :create, offer: { customer_support_email: @offer.customer_support_email, customer_support_phone: @offer.customer_support_phone, description: @offer.description, fax_number: @offer.fax_number, fulfillment: @offer.fulfillment, hours_of_operation: @offer.hours_of_operation, name: @offer.name, trial: @offer.trial, website: @offer.website, whos_offer: @offer.whos_offer }
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
    patch :update, id: @offer, offer: { customer_support_email: @offer.customer_support_email, customer_support_phone: @offer.customer_support_phone, description: @offer.description, fax_number: @offer.fax_number, fulfillment: @offer.fulfillment, hours_of_operation: @offer.hours_of_operation, name: @offer.name, trial: @offer.trial, website: @offer.website, whos_offer: @offer.whos_offer }
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
