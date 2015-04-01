require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address: @user.address, address_2: @user.address_2, bank_account_number: @user.bank_account_number, bank_routing_number: @user.bank_routing_number, birthdate: @user.birthdate, city: @user.city, date_established: @user.date_established, drivers_licence_expiration: @user.drivers_licence_expiration, drivers_license_number: @user.drivers_license_number, drivers_license_state: @user.drivers_license_state, ein: @user.ein, email: @user.email, entity_name: @user.entity_name, percent_of_ownership: @user.percent_of_ownership, phone: @user.phone, ssn: @user.ssn, state: @user.state, time_at_current_residence_months: @user.time_at_current_residence_months, time_at_current_residence_years: @user.time_at_current_residence_years, zip: @user.zip }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { address: @user.address, address_2: @user.address_2, bank_account_number: @user.bank_account_number, bank_routing_number: @user.bank_routing_number, birthdate: @user.birthdate, city: @user.city, date_established: @user.date_established, drivers_licence_expiration: @user.drivers_licence_expiration, drivers_license_number: @user.drivers_license_number, drivers_license_state: @user.drivers_license_state, ein: @user.ein, email: @user.email, entity_name: @user.entity_name, percent_of_ownership: @user.percent_of_ownership, phone: @user.phone, ssn: @user.ssn, state: @user.state, time_at_current_residence_months: @user.time_at_current_residence_months, time_at_current_residence_years: @user.time_at_current_residence_years, zip: @user.zip }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
