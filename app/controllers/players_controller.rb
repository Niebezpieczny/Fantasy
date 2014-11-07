class PlayersController < ApplicationController
  before_action :authenticate_user!
	def index
		@players = Player.all
	end

	def new
		@player = Player.new
	end

	def show
		@player = Player.find(params[:id])
  end

	def create
    @player = Player.new(player_params)
    if @player.save
      flash[:notice] = "Player created"
      redirect_to @player
    end
  end

  private
  def player_params
  	params.require(:player).permit(:name, :team, :position,:price)
  end


end

