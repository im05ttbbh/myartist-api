# require 'rails_helper'

# RSpec.describe Artist, type: :model do
#   before do
#     @artist = build(:artist)
#   end

#   describe "バリデーション" do
#     it "Artistのartistがartist_artist_1になっていればOK" do
#       expect(@artist.artist).to eq("artist_artist_1")
#     end

#     it "artistとgenre_idどちらの値もあればOK" do
#       expect(@artist.valid?).to eq(true)
#     end

#     it "artistが空だとNG" do
#       @artist.artist = ""
#       expect(@artist.valid?).to eq(false)
#     end

#     it "genre_idが空だとNG" do
#       @artist.genre_id = ""
#       expect(@artist.valid?).to eq(false)
#     end
#   end
# end