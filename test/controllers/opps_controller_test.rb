require "test_helper"

class OppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opp = opps(:one)
  end

  test "should get index" do
    get opps_url
    assert_response :success
  end

  test "should get new" do
    get new_opp_url
    assert_response :success
  end

  test "should create opp" do
    assert_difference("Opp.count") do
      post opps_url, params: { opp: { name: @opp.name, opp_reason: @opp.opp_reason, progress: @opp.progress } }
    end

    assert_redirected_to opp_url(Opp.last)
  end

  test "should show opp" do
    get opp_url(@opp)
    assert_response :success
  end

  test "should get edit" do
    get edit_opp_url(@opp)
    assert_response :success
  end

  test "should update opp" do
    patch opp_url(@opp), params: { opp: { name: @opp.name, opp_reason: @opp.opp_reason, progress: @opp.progress } }
    assert_redirected_to opp_url(@opp)
  end

  test "should destroy opp" do
    assert_difference("Opp.count", -1) do
      delete opp_url(@opp)
    end

    assert_redirected_to opps_url
  end
end
