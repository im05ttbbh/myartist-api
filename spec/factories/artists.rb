FactoryBot.define do
  factory :artist do
    sequence(:artist) {|num| "artist_artist_#{num}"}
    sequence(:genre_id) {|num| num}
  end
end
