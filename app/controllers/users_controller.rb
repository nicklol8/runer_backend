class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    this_leaderboard_users = User.where("leaderboard_id = #{params[:leaderboard_id]}").order('score DESC')

    render json: {message: "users", users: this_leaderboard_users}
  end

  # GET /users/1
  def show
    this_leaderboard_users = User.where("leaderboard_id = #{params[:leaderboard_id]}").find(params[:id])

    render json: this_leaderboard_users
  end

  # POST /users
  def create
    @user = User.new(user_params)
    @user.leaderboard_id = params[:leaderboard_id]

    if @user.save
      render json: @user
    else
      render json: {message: "Bad Something"}
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :score)
    end
end
