require 'rails_helper'

RSpec.describe 'user on show page' do
  it 'can edit an artist' do

    create(:artist)

    visit "artists/#{Artist.first.id}"
    #visit artist_path(Artist.first) why cant I use this? this is something to dig in to

    click_on("Edit")
    fill_in "artist[name]", with: "Better Artist"
    fill_in "artist[image_path]", with: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    click_on("Update Artist")

    expect(current_path).to eq("/artists/#{Artist.first.id}")
    expect(page).to have_content("Better Artist")

  end
end
