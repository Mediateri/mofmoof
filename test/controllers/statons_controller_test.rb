require 'test_helper'

class StatonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staton = statons(:one)
  end

  test "should get index" do
    get statons_url
    assert_response :success
  end

  test "should get new" do
    get new_staton_url
    assert_response :success
  end

  test "should create staton" do
    assert_difference('Staton.count') do
      post statons_url, params: { staton: { how_many_minutes_walks: @staton.how_many_minutes_walks, my_property_id: @staton.my_property_id, name_of_railway_line: @staton.name_of_railway_line, statation_name: @staton.statation_name } }
    end

    assert_redirected_to staton_url(Staton.last)
  end

  test "should show staton" do
    get staton_url(@staton)
    assert_response :success
  end

  test "should get edit" do
    get edit_staton_url(@staton)
    assert_response :success
  end

  test "should update staton" do
    patch staton_url(@staton), params: { staton: { how_many_minutes_walks: @staton.how_many_minutes_walks, my_property_id: @staton.my_property_id, name_of_railway_line: @staton.name_of_railway_line, statation_name: @staton.statation_name } }
    assert_redirected_to staton_url(@staton)
  end

  test "should destroy staton" do
    assert_difference('Staton.count', -1) do
      delete staton_url(@staton)
    end

    assert_redirected_to statons_url
  end
end
