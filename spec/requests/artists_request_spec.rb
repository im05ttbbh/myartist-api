require 'rails_helper'

RSpec.describe "Artists", type: :request do
  describe "API通信" do
    # it "GETリクエスト" do
    #   create_list(:artist, 10)

    #   get "/artists"
    #   json = JSON.parse(response.body)
    #   expect(response.status).to eq(200)
    #   expect(json['data'].length).to eq(10)
    # end

    it "POSTリクエスト" do
      create(:artist)

      post "/artists"
      json = JSON.parse(response.body)
      expect(response.status).to eq(200)
      expect(json['data'].length).to eq(10)

      # post artists_path, @params
      # expect(response).to be_success
      # expect(response.status).to eq 200
    end

    # it "POSTリクエスト" do
    #   artist_params = { artist: {genre_content: 'POPS', artist: "あいみょん"}  }

    #   expect { post '/artists', params: { artist: artist_params } }.to change(Artist, :count).by(+1)
    # end
  end
end