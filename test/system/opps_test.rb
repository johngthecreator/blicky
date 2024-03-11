require "application_system_test_case"

class OppsTest < ApplicationSystemTestCase
  setup do
    @opp = opps(:one)
  end

  test "visiting the index" do
    visit opps_url
    assert_selector "h1", text: "Opps"
  end

  test "should create opp" do
    visit opps_url
    click_on "New opp"

    fill_in "Name", with: @opp.name
    fill_in "Opp reason", with: @opp.opp_reason
    fill_in "Progress", with: @opp.progress
    click_on "Create Opp"

    assert_text "Opp was successfully created"
    click_on "Back"
  end

  test "should update Opp" do
    visit opp_url(@opp)
    click_on "Edit this opp", match: :first

    fill_in "Name", with: @opp.name
    fill_in "Opp reason", with: @opp.opp_reason
    fill_in "Progress", with: @opp.progress
    click_on "Update Opp"

    assert_text "Opp was successfully updated"
    click_on "Back"
  end

  test "should destroy Opp" do
    visit opp_url(@opp)
    click_on "Destroy this opp", match: :first

    assert_text "Opp was successfully destroyed"
  end
end
