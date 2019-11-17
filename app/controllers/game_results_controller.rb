class GameResultsController < ApplicationController

  def index
    @games = GameResult.all
  end

  def new
    @game = GameResult.new
  end

  def create
    @game = GameResult.new(game_result_params)
    @game.admin_user_id = current_admin_user.id
    @game.save
      redirect_to game_results_path
  end

  private
    def game_result_params
      params.require(:game_result).permit(:admin_user_id, :title, :result, :place, :street_address, :match_day, :image_id)
    end
end
