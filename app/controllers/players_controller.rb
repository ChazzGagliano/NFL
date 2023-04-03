class PlayersController < ApplicationController
  def index
    @players = Player.all
    render :index
  end
  def show
    @player = Player.find_by(id: params[:id])
    render :show
  end

  def create
    @player = Player.new(
    name: params[:name],
    jersey: params[:jersey],
    team: params[:team],
    position: params[:position]
    )
   @player.save
   render :show
  end

  
  
end