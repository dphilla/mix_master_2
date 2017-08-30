
require 'rails_helper'

RSpec.describe 'user on playlist show page' do
  it 'can edit a playlist' do

    create(:playlist)

    song_one, song_two, song_three = create_list(:song, 3) #what about relationships between factories as we make them
    visit "/playlists/#{Playlist.first.id}"
    #visit artist_path(Artist.first) why cant I use this? this is something to dig in to

    click_on("Edit")
    fill_in "playlist[name]", with: "Better playlist, obv"
    uncheck("song-#{song_one.id}")
    check("song-#{song_three.id}")
    click_on("Update Playlist")

    expect(current_path).to eq("/playlists")
    expect(page).to have_content("Better playlist, obv")

  end
end
