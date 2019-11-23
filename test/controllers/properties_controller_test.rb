require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { adress: @property.adress, building_age: @property.building_age, how_many_minutes_walks1: @property.how_many_minutes_walks1, how_many_minutes_walks: @property.how_many_minutes_walks, name_of_railway_line1: @property.name_of_railway_line1, name_of_railway_line: @property.name_of_railway_line, property: @property.property, remarks: @property.remarks, rent: @property.rent, statation_name1: @property.statation_name1, statation_name: @property.statation_name } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { adress: @property.adress, building_age: @property.building_age, how_many_minutes_walks1: @property.how_many_minutes_walks1, how_many_minutes_walks: @property.how_many_minutes_walks, name_of_railway_line1: @property.name_of_railway_line1, name_of_railway_line: @property.name_of_railway_line, property: @property.property, remarks: @property.remarks, rent: @property.rent, statation_name1: @property.statation_name1, statation_name: @property.statation_name } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
