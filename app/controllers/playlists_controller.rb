class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
    @songs = Song.all
  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.save
    redirect_to playlist_path(@playlist)
  end

  def edit
    @playlist = Playlist.find(params[:id])
    @songs = Song.all
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)
    redirect_to playlists_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end
end
