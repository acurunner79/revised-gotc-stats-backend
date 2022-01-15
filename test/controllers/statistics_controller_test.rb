require "test_helper"

class StatisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statistic = statistics(:one)
  end

  test "should get index" do
    get statistics_url, as: :json
    assert_response :success
  end

  test "should create statistic" do
    assert_difference('Statistic.count') do
      post statistics_url, params: { statistic: { cav_attack: @statistic.cav_attack, cav_attack_vs_player: @statistic.cav_attack_vs_player, cav_attack_vs_players_cav: @statistic.cav_attack_vs_players_cav, cav_attack_vs_players_inf: @statistic.cav_attack_vs_players_inf, cav_attack_vs_players_ranged: @statistic.cav_attack_vs_players_ranged, cav_attack_vs_players_siege: @statistic.cav_attack_vs_players_siege, cav_defense: @statistic.cav_defense, cav_defense_vs_player: @statistic.cav_defense_vs_player, cav_defense_vs_players_cav: @statistic.cav_defense_vs_players_cav, cav_defense_vs_players_inf: @statistic.cav_defense_vs_players_inf, cav_defense_vs_players_ranged: @statistic.cav_defense_vs_players_ranged, cav_defense_vs_players_siege: @statistic.cav_defense_vs_players_siege, cav_health: @statistic.cav_health, cav_health_vs_player: @statistic.cav_health_vs_player, inf_attack: @statistic.inf_attack, inf_attack_vs_player: @statistic.inf_attack_vs_player, inf_attack_vs_players_cav: @statistic.inf_attack_vs_players_cav, inf_attack_vs_players_inf: @statistic.inf_attack_vs_players_inf, inf_attack_vs_players_ranged: @statistic.inf_attack_vs_players_ranged, inf_defense: @statistic.inf_defense, inf_defense_vs_player: @statistic.inf_defense_vs_player, inf_defense_vs_players_cav: @statistic.inf_defense_vs_players_cav, inf_defense_vs_players_inf: @statistic.inf_defense_vs_players_inf, inf_defense_vs_players_ranged: @statistic.inf_defense_vs_players_ranged, inf_defense_vs_players_siege: @statistic.inf_defense_vs_players_siege, inf_health: @statistic.inf_health, inf_health_vs_player: @statistic.inf_health_vs_player, range_defense_vs_player: @statistic.range_defense_vs_player, ranged_attack: @statistic.ranged_attack, ranged_attack_vs_player: @statistic.ranged_attack_vs_player, ranged_attack_vs_players_cav: @statistic.ranged_attack_vs_players_cav, ranged_attack_vs_players_inf: @statistic.ranged_attack_vs_players_inf, ranged_attack_vs_players_ranged: @statistic.ranged_attack_vs_players_ranged, ranged_attack_vs_players_siege: @statistic.ranged_attack_vs_players_siege, ranged_defense: @statistic.ranged_defense, ranged_defense_vs_players_cav: @statistic.ranged_defense_vs_players_cav, ranged_defense_vs_players_inf: @statistic.ranged_defense_vs_players_inf, ranged_defense_vs_players_ranged: @statistic.ranged_defense_vs_players_ranged, ranged_defense_vs_players_siege: @statistic.ranged_defense_vs_players_siege, ranged_health: @statistic.ranged_health, ranged_health_vs_player: @statistic.ranged_health_vs_player } }, as: :json
    end

    assert_response 201
  end

  test "should show statistic" do
    get statistic_url(@statistic), as: :json
    assert_response :success
  end

  test "should update statistic" do
    patch statistic_url(@statistic), params: { statistic: { cav_attack: @statistic.cav_attack, cav_attack_vs_player: @statistic.cav_attack_vs_player, cav_attack_vs_players_cav: @statistic.cav_attack_vs_players_cav, cav_attack_vs_players_inf: @statistic.cav_attack_vs_players_inf, cav_attack_vs_players_ranged: @statistic.cav_attack_vs_players_ranged, cav_attack_vs_players_siege: @statistic.cav_attack_vs_players_siege, cav_defense: @statistic.cav_defense, cav_defense_vs_player: @statistic.cav_defense_vs_player, cav_defense_vs_players_cav: @statistic.cav_defense_vs_players_cav, cav_defense_vs_players_inf: @statistic.cav_defense_vs_players_inf, cav_defense_vs_players_ranged: @statistic.cav_defense_vs_players_ranged, cav_defense_vs_players_siege: @statistic.cav_defense_vs_players_siege, cav_health: @statistic.cav_health, cav_health_vs_player: @statistic.cav_health_vs_player, inf_attack: @statistic.inf_attack, inf_attack_vs_player: @statistic.inf_attack_vs_player, inf_attack_vs_players_cav: @statistic.inf_attack_vs_players_cav, inf_attack_vs_players_inf: @statistic.inf_attack_vs_players_inf, inf_attack_vs_players_ranged: @statistic.inf_attack_vs_players_ranged, inf_defense: @statistic.inf_defense, inf_defense_vs_player: @statistic.inf_defense_vs_player, inf_defense_vs_players_cav: @statistic.inf_defense_vs_players_cav, inf_defense_vs_players_inf: @statistic.inf_defense_vs_players_inf, inf_defense_vs_players_ranged: @statistic.inf_defense_vs_players_ranged, inf_defense_vs_players_siege: @statistic.inf_defense_vs_players_siege, inf_health: @statistic.inf_health, inf_health_vs_player: @statistic.inf_health_vs_player, range_defense_vs_player: @statistic.range_defense_vs_player, ranged_attack: @statistic.ranged_attack, ranged_attack_vs_player: @statistic.ranged_attack_vs_player, ranged_attack_vs_players_cav: @statistic.ranged_attack_vs_players_cav, ranged_attack_vs_players_inf: @statistic.ranged_attack_vs_players_inf, ranged_attack_vs_players_ranged: @statistic.ranged_attack_vs_players_ranged, ranged_attack_vs_players_siege: @statistic.ranged_attack_vs_players_siege, ranged_defense: @statistic.ranged_defense, ranged_defense_vs_players_cav: @statistic.ranged_defense_vs_players_cav, ranged_defense_vs_players_inf: @statistic.ranged_defense_vs_players_inf, ranged_defense_vs_players_ranged: @statistic.ranged_defense_vs_players_ranged, ranged_defense_vs_players_siege: @statistic.ranged_defense_vs_players_siege, ranged_health: @statistic.ranged_health, ranged_health_vs_player: @statistic.ranged_health_vs_player } }, as: :json
    assert_response 200
  end

  test "should destroy statistic" do
    assert_difference('Statistic.count', -1) do
      delete statistic_url(@statistic), as: :json
    end

    assert_response 204
  end
end
