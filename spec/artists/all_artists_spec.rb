require 'rails_helper'

describe "user" do
  it 'can see all artists' do

  5.times do
    create(:artist)
  end

  visit "/artists"

  expect(page).to have_content(Artist.first.name)
  expect(page).to have_content(Artist.last.name)
  expect(page).to have_link(Artist.first.name)

  end
end
