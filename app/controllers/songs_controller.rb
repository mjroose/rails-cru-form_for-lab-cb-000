class SongsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private
    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
