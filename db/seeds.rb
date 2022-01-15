# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p Statistic.create([
    {
        inf_attack: 275.969,
        inf_defense: 207.96,
        inf_health: 143.215,
        inf_attack_vs_player: 526.386,
        inf_defense_vs_player: 195.053,
        inf_health_vs_player: 200.43,
        inf_attack_vs_players_inf: 102.42,
        inf_attack_vs_players_ranged: 48.94,
        inf_attack_vs_players_cav: 279.003,
        inf_defense_vs_players_cav: 242.705,
        inf_defense_vs_players_inf: 8.36,
        inf_defense_vs_players_ranged: 120.736,
        inf_defense_vs_players_siege: 3.0,
        cav_attack: 53.44,
        cav_defense: 34.67,
        cav_health: 22.61,
        cav_attack_vs_player: 217.66,
        cav_defense_vs_player: 175.25,
        cav_health_vs_player: 146.27,
        cav_attack_vs_players_inf: 14.98,
        cav_attack_vs_players_ranged:41.88,
        cav_attack_vs_players_cav: 29.64,
        cav_attack_vs_players_siege: 4.0,
        cav_defense_vs_players_cav: 10.76,
        cav_defense_vs_players_inf: 54.34,
        cav_defense_vs_players_ranged: 52.4,
        cav_defense_vs_players_siege: 3.0,
        ranged_attack: 249.637,
        ranged_defense: 211.486,
        ranged_health: 200.694,
        ranged_attack_vs_player: 555.162,
        range_defense_vs_player: 387.333,
        ranged_health_vs_player: 332.806,
        ranged_attack_vs_players_inf: 357.828,
        ranged_attack_vs_players_ranged: 190.438,
        ranged_attack_vs_players_cav: 92.36,
        ranged_attack_vs_players_siege: 4.0,
        ranged_defense_vs_players_cav: 160.993,
        ranged_defense_vs_players_inf: 262.878,
        ranged_defense_vs_players_ranged: 74.795,
        ranged_defense_vs_players_siege: 4.0,
        user_id: 1
    }
])

# p User.create([
#     {
#         username: "acurunner79",
#         password: "1234",
#         in_game_name: "Ninja Guiden V2",
#         allegiance: "FK!T",
#         keep_level: 30,
#         house_level: 45,
#         power_level: 174815270,
#         building_power: 2964944,
#         research_power: 3474695,
#         troop_power: 155006045,
#         dragon_talent_power: 600500,
#         armory_power: 8118457
#     }
# ])