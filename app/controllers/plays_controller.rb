class PlaysController < ApplicationController
  def index
    @images = Image.all
    @plays = Play.includes(:image)
  end

  def create
    play = Play.new(play_params)
    if play.save
      render json: :ok, status: 204
    else
      render json: play.errors.messages.to_s
    end
  end

  private
    def play_params
      params.require(:play).permit(:timer, :image_id)
    end
end
