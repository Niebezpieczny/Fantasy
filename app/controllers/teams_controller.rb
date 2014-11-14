class TeamsController < ApplicationController
  
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
    @player_prices = {}

    Player.all.each do |player|
      @player_prices[player.id] = player.price
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "Team created"
      redirect_to @team
    end
  end

  private
  def team_params
   params.require(:team).permit(:name, {:player_ids =>[]}, :user_id)
 end


end
