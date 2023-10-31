require "application_system_test_case"

class TeamRetrosTest < ApplicationSystemTestCase
  setup do
    @team_retro = team_retros(:one)
  end

  test "visiting the index" do
    visit team_retros_url
    assert_selector "h1", text: "Team retros"
  end

  test "should create team retro" do
    visit team_retros_url
    click_on "New team retro"

    fill_in "Retros", with: @team_retro.retros_id
    fill_in "Team", with: @team_retro.team_id
    click_on "Create Team retro"

    assert_text "Team retro was successfully created"
    click_on "Back"
  end

  test "should update Team retro" do
    visit team_retro_url(@team_retro)
    click_on "Edit this team retro", match: :first

    fill_in "Retros", with: @team_retro.retros_id
    fill_in "Team", with: @team_retro.team_id
    click_on "Update Team retro"

    assert_text "Team retro was successfully updated"
    click_on "Back"
  end

  test "should destroy Team retro" do
    visit team_retro_url(@team_retro)
    click_on "Destroy this team retro", match: :first

    assert_text "Team retro was successfully destroyed"
  end
end
