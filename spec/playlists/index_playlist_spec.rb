
require 'rails_helper'

describe "user" do
  it "can view playlist" do
  playlist1, playlist2, playlist3 = create_list(:playlist, 3)

  visit '/playlists'

  expect(page).to have_content(playlist1.name)

  click_on playlist3.name

  expect(current_path).to eq("/playlists/#{Playlist.last.id}")
  expect(page).to have_content(playlist3.name)

  end
end

