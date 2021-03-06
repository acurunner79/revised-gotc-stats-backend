class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users.to_json(include: :statistics)
  end

  # GET /users/1
  def show
    # user_stats = @user.statistics
    # render json: { user: @user, statistics: user_stats }
    render json: @user.to_json(include: :statistics)
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    user = User.find(params[:id])
    user.update(user_params)
    render(json: { user: user })
    # if @user.update(user_params)
    #   render json: @user
    # else
    #   render json: @user.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /users/1
  def destroy
    # @user.destroy
    user = User.destroy(params[:id])
    render(status: 204)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :in_game_name, :allegiance, :keep_level, :house_level, :power_level, :building_power, :research_power, :troop_power, :dragon_talent_power, :armory_power)
    end
end
