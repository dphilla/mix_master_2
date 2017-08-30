FactoryGirl.define do
  factory :playlist_song do
    song
    playlist
  end
  factory :playlist do
    sequence :name do |n|
       "MyString#{n}"
    end

  end

  factory :artist do

    sequence :name do |n|
      "Bob Marley#{n}"
    end

    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

  end

  factory :song do
    sequence  :title do |n|
      "One love #{n}"
    end

    artist
  end
end
