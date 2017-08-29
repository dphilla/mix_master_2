require 'spec_helper'

describe 'user' do
  it 'can create new artist' do

    artist_name       = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

    visit '/artists'
    click_on "New Artist"
    fill_in "artist[name]", with: artist_name
    fill_in "artist[image_path]", with: artist_image_path
    click_on "Create Artist"

#save_and_open_page
    expect(page).to have_content(artist_name)
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")

  end
end
