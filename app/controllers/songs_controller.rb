class SongsController < ApplicationController
  def index
    @songs = Artist.all
  end

  def show
    @song = Artist.find(params[:id])
  end

  def new
    @song = Artist.new
  end

  def create
    @song = Artist.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Artist.find(params[:id])
  end

  def update
    @song = Artist.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private
    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
