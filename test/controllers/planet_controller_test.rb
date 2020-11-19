require 'test_helper'

class PlanetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get planet_index_url
    assert_response :success
  end

  test "should get show" do
    get planet_show_url
    assert_response :success
  end

  test "should get alphabetized" do
    get planet_alphabetized_url
    assert_response :success
  end

  test "should get newest" do
    get planet_newest_url
    assert_response :success
  end

  test "should get hightolow" do
    get planet_hightolow_url
    assert_response :success
  end

  test "should get lowtohigh" do
    get planet_lowtohigh_url
    assert_response :success
  end

end
