require "test_helper"

class TeamRetrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_retro = team_retros(:one)
  end

  test "should get index" do
    get team_retros_url
    assert_response :success
  end

  test "should get new" do
    get new_team_retro_url
    assert_response :success
  end

  test "should create team_retro" do
    assert_difference("TeamRetro.count") do
      post team_retros_url, params: { team_retro: { retros_id: @team_retro.retros_id, team_id: @team_retro.team_id } }
    end

    assert_redirected_to team_retro_url(TeamRetro.last)
  end

  test "should show team_retro" do
    get team_retro_url(@team_retro)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_retro_url(@team_retro)
    assert_response :success
  end

  test "should update team_retro" do
    patch team_retro_url(@team_retro), params: { team_retro: { retros_id: @team_retro.retros_id, team_id: @team_retro.team_id } }
    assert_redirected_to team_retro_url(@team_retro)
  end

  test "should destroy team_retro" do
    assert_difference("TeamRetro.count", -1) do
      delete team_retro_url(@team_retro)
    end

    assert_redirected_to team_retros_url
  end
end
