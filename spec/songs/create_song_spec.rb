
require 'spec_helper'

describe 'user' do
  it 'can create new song' do #happy path
    artist = create(:artist)

    visit "/artists/#{artist.id}"
    fill_in "song[title]", with: "One Love"
    click_on "Create Song"

    expect(page).to have_content("One Love")
    expect(current_path).to eq("/songs/#{Song.last.id}")
  end

  it "cannot submits invalid data" do #sad path

  artist = create(:artist)

    visit "/artists/#{artist.id}"
    click_on "Create Song"
#save_and_open_page
    expect(page).to have_content("Title can't be blank")

  end
end
