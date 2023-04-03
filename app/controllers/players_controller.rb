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

  def update
    @player = Player.find_by(id: params[:id])
    @player.name = params[:name] || @player.name
@player.jersey = params[:jersey] || @player.jersey
    @player.team = params[:team] || @player.team
@player.position = params[:position] || @player.position
    @player.save
    render :show
  end

  def destroy
  @player = Player.find_by(id: params[:id])
  @player.destroy
  render json: {message: "player destroyed" }
  end
   
  


end