class CreateStatistics < ActiveRecord::Migration[6.1]
  def change
    create_table :statistics do |t|
      t.decimal :inf_attack
      t.decimal :inf_defense
      t.decimal :inf_health
      t.decimal :inf_attack_vs_player
      t.decimal :inf_defense_vs_player
      t.decimal :inf_health_vs_player
      t.decimal :inf_attack_vs_players_inf
      t.decimal :inf_attack_vs_players_ranged
      t.decimal :inf_attack_vs_players_cav
      t.decimal :inf_defense_vs_players_cav
      t.decimal :inf_defense_vs_players_inf
      t.decimal :inf_defense_vs_players_ranged
      t.decimal :inf_defense_vs_players_siege
      t.decimal :cav_attack
      t.decimal :cav_defense
      t.decimal :cav_health
      t.decimal :cav_attack_vs_player
      t.decimal :cav_defense_vs_player
      t.decimal :cav_health_vs_player
      t.decimal :cav_attack_vs_players_inf
      t.decimal :cav_attack_vs_players_ranged
      t.decimal :cav_attack_vs_players_cav
      t.decimal :cav_attack_vs_players_siege
      t.decimal :cav_defense_vs_players_cav
      t.decimal :cav_defense_vs_players_inf
      t.decimal :cav_defense_vs_players_ranged
      t.decimal :cav_defense_vs_players_siege
      t.decimal :ranged_attack
      t.decimal :ranged_defense
      t.decimal :ranged_health
      t.decimal :ranged_attack_vs_player
      t.decimal :range_defense_vs_player
      t.decimal :ranged_health_vs_player
      t.decimal :ranged_attack_vs_players_inf
      t.decimal :ranged_attack_vs_players_ranged
      t.decimal :ranged_attack_vs_players_cav
      t.decimal :ranged_attack_vs_players_siege
      t.decimal :ranged_defense_vs_players_cav
      t.decimal :ranged_defense_vs_players_inf
      t.decimal :ranged_defense_vs_players_ranged
      t.decimal :ranged_defense_vs_players_siege

      t.timestamps
    end
  end
end
