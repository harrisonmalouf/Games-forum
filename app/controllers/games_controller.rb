class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    game = Game.create game_params
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      game.image = req["public_id"]
      game.save
    end
    redirect_to game
  end

  def edit
    @game = Game.find params[:id]
  end

  def update
    game = Game.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      animal.image = req["public_id"]
    end
        game.update game_params
        restaurant.save
    redirect_to games
  end

  def destroy
    game = Game.find params[:id]
    game.destroy
    redirect_to games_path
  end


  def show
    @game = Game.find(params[:id])
  end

  private
  def game_params
    params.require(:game).permit(:name, :release_date, :company, :platform, :image)
  end

end
