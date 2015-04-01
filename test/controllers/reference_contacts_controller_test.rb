require 'test_helper'

class ReferenceContactsControllerTest < ActionController::TestCase
  setup do
    @reference_contact = reference_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reference_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reference_contact" do
    assert_difference('ReferenceContact.count') do
      post :create, reference_contact: { known_from: @reference_contact.known_from, name: @reference_contact.name, phone: @reference_contact.phone }
    end

    assert_redirected_to reference_contact_path(assigns(:reference_contact))
  end

  test "should show reference_contact" do
    get :show, id: @reference_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reference_contact
    assert_response :success
  end

  test "should update reference_contact" do
    patch :update, id: @reference_contact, reference_contact: { known_from: @reference_contact.known_from, name: @reference_contact.name, phone: @reference_contact.phone }
    assert_redirected_to reference_contact_path(assigns(:reference_contact))
  end

  test "should destroy reference_contact" do
    assert_difference('ReferenceContact.count', -1) do
      delete :destroy, id: @reference_contact
    end

    assert_redirected_to reference_contacts_path
  end
end
