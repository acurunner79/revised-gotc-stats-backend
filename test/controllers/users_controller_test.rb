require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { allegiance: @user.allegiance, armory_power: @user.armory_power, building_power: @user.building_power, dragon_talent_power: @user.dragon_talent_power, house_level: @user.house_level, in_game_name: @user.in_game_name, keep_level: @user.keep_level, password: @user.password, power_level: @user.power_level, research_power: @user.research_power, troop_power: @user.troop_power, username: @user.username } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { allegiance: @user.allegiance, armory_power: @user.armory_power, building_power: @user.building_power, dragon_talent_power: @user.dragon_talent_power, house_level: @user.house_level, in_game_name: @user.in_game_name, keep_level: @user.keep_level, password: @user.password, power_level: @user.power_level, research_power: @user.research_power, troop_power: @user.troop_power, username: @user.username } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
