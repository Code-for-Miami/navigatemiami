require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get new" do
    get new_location_url
    assert_response :success
  end

  test "create location should redirect to new location" do
    assert_difference('Location.count') do
      post locations_url, params: { location: { address1: @location.address1, address2: @location.address2, city: @location.city, email: @location.email, name: @location.name, phone: @location.phone, state: @location.state, url: @location.url, zip: @location.zip } }
    end

    assert_redirected_to location_url(Location.last)
  end

  test "create location should flash success" do
    assert_difference('Location.count') do
      post locations_url, params: { location: { address1: @location.address1, address2: @location.address2, city: @location.city, email: @location.email, name: @location.name, phone: @location.phone, state: @location.state, url: @location.url, zip: @location.zip } }
    end

    assert_equal 'Location was successfully created.', flash[:notice]
  end

  test "create location failure should show error" do
    post locations_url, params: { location: { address1: '', address2: @location.address2, city: @location.city, email: @location.email, name: @location.name, phone: @location.phone, state: @location.state, url: @location.url, zip: @location.zip } }

    #       assert_select 'h1', 'Articles'
    assert_select '#error_explanation>ul', "Address1 can't be blank"
  end

  test "should show location" do
    get location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_url(@location)
    assert_response :success
  end

  test "successful location update should redirect to new location" do
    patch location_url(@location), params: {
        location: {
          address1: @location.address1, address2: @location.address2,
          city: @location.city, email: @location.email,
          name: @location.name, phone: @location.phone,
          state: @location.state, url: @location.url,
          zip: @location.zip
        }
    }

    assert_redirected_to location_url(@location)
  end

  test "successful location update should show success message" do
    patch location_url(@location), params: {
        location: {
            address1: @location.address1, address2: @location.address2,
            city: @location.city, email: @location.email,
            name: @location.name, phone: @location.phone,
            state: @location.state, url: @location.url,
            zip: @location.zip
        }
    }

    assert_equal 'Location was successfully updated.', flash[:notice]
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete location_url(@location)
    end

    assert_redirected_to locations_url
  end
end
