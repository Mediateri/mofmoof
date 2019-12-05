require 'test_helper'

class MyPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_property = my_properties(:one)
  end

  test "should get index" do
    get my_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_my_property_url
    assert_response :success
  end

  test "should create my_property" do
    assert_difference('MyProperty.count') do
      post my_properties_url, params: { my_property: { adress: @my_property.adress, building_age: @my_property.building_age, property: @my_property.property, remarks: @my_property.remarks, rent: @my_property.rent } }
    end

    assert_redirected_to my_property_url(MyProperty.last)
  end

  test "should show my_property" do
    get my_property_url(@my_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_property_url(@my_property)
    assert_response :success
  end

  test "should update my_property" do
    patch my_property_url(@my_property), params: { my_property: { adress: @my_property.adress, building_age: @my_property.building_age, property: @my_property.property, remarks: @my_property.remarks, rent: @my_property.rent } }
    assert_redirected_to my_property_url(@my_property)
  end

  test "should destroy my_property" do
    assert_difference('MyProperty.count', -1) do
      delete my_property_url(@my_property)
    end

    assert_redirected_to my_properties_url
  end
end
