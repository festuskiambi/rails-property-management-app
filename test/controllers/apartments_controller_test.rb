require 'test_helper'

class ApartmentsControllerTest < ActionController::TestCase
<<<<<<< HEAD
  setup do
    @apartment = apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post :create, apartment: { bedrooms: @apartment.bedrooms, location: @apartment.location, name: @apartment.name, rent: @apartment.rent, status: @apartment.status }
    end

    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should show apartment" do
    get :show, id: @apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartment
    assert_response :success
  end

  test "should update apartment" do
    patch :update, id: @apartment, apartment: { bedrooms: @apartment.bedrooms, location: @apartment.location, name: @apartment.name, rent: @apartment.rent, status: @apartment.status }
    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete :destroy, id: @apartment
    end

    assert_redirected_to apartments_path
  end
=======
  # test "the truth" do
  #   assert true
  # end
>>>>>>> 5f76f3777e7141640b420cf75df063263ec85ed4
end
