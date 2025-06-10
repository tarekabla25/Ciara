class PlayersController < ApplicationController
  
  def index
    



    
  end
  def new
    @player = Player.new
  end

  def create
    @player = Player.new
    @player.update(params.require(:player).permit(:name))

    redirect_to '/players/index'
  end


end