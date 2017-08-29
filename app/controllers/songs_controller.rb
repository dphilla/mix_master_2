class SongsController < ApplicationController

   def new
     @song = Song.new
   end

   def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to artist_path(@song.artist)
    else
      render 'artists/show'
    end
   end

   private

   def song_params
    params.require(:song).permit(:title)
   end

end
