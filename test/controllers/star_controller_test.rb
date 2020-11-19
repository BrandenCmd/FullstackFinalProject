require 'test_helper'

class StarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get star_index_url
    assert_response :success
  end

  test "should get show" do
    get star_show_url
    assert_response :success
  end

  test "should get alphabetized" do
    get star_alphabetized_url
    assert_response :success
  end

  test "should get newest" do
    get star_newest_url
    assert_response :success
  end

  test "should get hightolow" do
    get star_hightolow_url
    assert_response :success
  end

  test "should get lowtohigh" do
    get star_lowtohigh_url
    assert_response :success
  end

end
