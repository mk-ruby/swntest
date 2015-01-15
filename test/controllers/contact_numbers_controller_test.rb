require 'test_helper'

class ContactNumbersControllerTest < ActionController::TestCase
  setup do
    @contact_number = contact_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_number" do
    assert_difference('ContactNumber.count') do
      post :create, contact_number: { person_id: @contact_number.person_id, phone_number: @contact_number.phone_number, type: @contact_number.type }
    end

    assert_redirected_to contact_number_path(assigns(:contact_number))
  end

  test "should show contact_number" do
    get :show, id: @contact_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_number
    assert_response :success
  end

  test "should update contact_number" do
    patch :update, id: @contact_number, contact_number: { person_id: @contact_number.person_id, phone_number: @contact_number.phone_number, type: @contact_number.type }
    assert_redirected_to contact_number_path(assigns(:contact_number))
  end

  test "should destroy contact_number" do
    assert_difference('ContactNumber.count', -1) do
      delete :destroy, id: @contact_number
    end

    assert_redirected_to contact_numbers_path
  end
end
