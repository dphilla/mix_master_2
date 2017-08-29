require 'rails_helper'

RSpec.describe 'user on show page' do
  it 'can delete an artist' do

    first_artist = create(:artist)
    create(:artist)

    visit "artists/#{Artist.first.id}"
    #visit artist_path(Artist.first) why cant I use this? this is something to dig in to

    click_on("Delete")

    expect(current_path).to eq("/artists")
    expect(page).to_not have_content("#{first_artist.name}")

  end
end

