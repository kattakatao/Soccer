class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.admin_user_id = current_admin_user.id
    @player.save
      redirect_to players_path
  end

  private
    def player_params
      params.require(:player).permit(:admin_user_id, :player_name, :school_year, :part, :position, :image_id, :introduction, :former_affiliation, :course)
    end
end
