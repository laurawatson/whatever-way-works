require "application_system_test_case"

class RetrospectivesTest < ApplicationSystemTestCase
  setup do
    @retrospective = retrospectives(:one)
  end

  test "visiting the index" do
    visit retrospectives_url
    assert_selector "h1", text: "Retrospectives"
  end

  test "should create retrospective" do
    visit retrospectives_url
    click_on "New retrospective"

    fill_in "Date of retro", with: @retrospective.date_of_retro
    fill_in "Label", with: @retrospective.label
    click_on "Create Retrospective"

    assert_text "Retrospective was successfully created"
    click_on "Back"
  end

  test "should update Retrospective" do
    visit retrospective_url(@retrospective)
    click_on "Edit this retrospective", match: :first

    fill_in "Date of retro", with: @retrospective.date_of_retro
    fill_in "Label", with: @retrospective.label
    click_on "Update Retrospective"

    assert_text "Retrospective was successfully updated"
    click_on "Back"
  end

  test "should destroy Retrospective" do
    visit retrospective_url(@retrospective)
    click_on "Destroy this retrospective", match: :first

    assert_text "Retrospective was successfully destroyed"
  end
end
