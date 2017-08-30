require 'rails_helper'

describe "user" do
  it "can create playlist" do
  create(:playlist)
  song_one, song_two, song_three = create_list(:song, 3)

  playlist = "new jams"

  visit '/playlists'

  click_on "New Playlist"
  fill_in "playlist[name]", with: playlist
  check("song-#{song_one.id}")
  check("song-#{song_three.id}")
  click_on "Create Playlist"

  expect(current_path).to eq("/playlists/#{Playlist.last.id}")
  expect(page).to have_content("new jams")
  expect(page).to have_link(song_three.title), href: "/songs/#{song_three.id}"

  end
end

