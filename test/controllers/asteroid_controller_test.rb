require 'test_helper'

class AsteroidControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get asteroid_index_url
    assert_response :success
  end

  test "should get show" do
    get asteroid_show_url
    assert_response :success
  end

  test "should get alphabetized" do
    get asteroid_alphabetized_url
    assert_response :success
  end

  test "should get newest" do
    get asteroid_newest_url
    assert_response :success
  end

  test "should get hightolow" do
    get asteroid_hightolow_url
    assert_response :success
  end

  test "should get lowtohigh" do
    get asteroid_lowtohigh_url
    assert_response :success
  end

end
