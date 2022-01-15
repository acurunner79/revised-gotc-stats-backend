class StatisticsController < ApplicationController
  # before_action :set_statistic, only: [:show, :update, :destroy]

  # GET /statistics
  def index
    @statistics = Statistic.all

    render json: @statistics
  end

  # GET /statistics/1
  def show
    render json: @statistic
  end

  # POST /statistics
  def create
    @statistic = Statistic.new(statistic_params)

    if @statistic.save
      render json: @statistic, status: :created, location: @statistic
    else
      render json: @statistic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /statistics/1
  def update
    statistic = Statistic.find(params[:id])
    statistic.update(statistic_params)
    render(json: { statistic: statistic})
    # if @statistic.update(statistic_params)
    #   render json: @statistic
    # else
    #   render json: @statistic.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /statistics/1
  def destroy
    @statistic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_statistic
    #   @statistic = Statistic.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def statistic_params
      params.require(:statistic).permit(:inf_attack, :inf_defense, :inf_health, :inf_attack_vs_player, :inf_defense_vs_player, :inf_health_vs_player, :inf_attack_vs_players_inf, :inf_attack_vs_players_ranged, :inf_attack_vs_players_cav, :inf_defense_vs_players_cav, :inf_defense_vs_players_inf, :inf_defense_vs_players_ranged, :inf_defense_vs_players_siege, :cav_attack, :cav_defense, :cav_health, :cav_attack_vs_player, :cav_defense_vs_player, :cav_health_vs_player, :cav_attack_vs_players_inf, :cav_attack_vs_players_ranged, :cav_attack_vs_players_cav, :cav_attack_vs_players_siege, :cav_defense_vs_players_cav, :cav_defense_vs_players_inf, :cav_defense_vs_players_ranged, :cav_defense_vs_players_siege, :ranged_attack, :ranged_defense, :ranged_health, :ranged_attack_vs_player, :range_defense_vs_player, :ranged_health_vs_player, :ranged_attack_vs_players_inf, :ranged_attack_vs_players_ranged, :ranged_attack_vs_players_cav, :ranged_attack_vs_players_siege, :ranged_defense_vs_players_cav, :ranged_defense_vs_players_inf, :ranged_defense_vs_players_ranged, :ranged_defense_vs_players_siege, :user_id)
    end
end
