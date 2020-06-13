require 'rails_helper'

RSpec.describe "Request", type: :request do
  describe "API通信" do
    it "GETリクエスト" do
      build(:artist)

      get "/artists"
      json = JSON.parse(response.body)
      expect(response.status).to eq(200)
    end

    it "POSTリクエスト" do
      post '/artists', 
        params: { artist: {genre_content: 'POPS', artist: 'サザンオールスターズ'} }, 
        headers: { 'ACCEPT' => 'application/json' }
      expect(response).to have_http_status(:ok)
    end

    it 'アーティストを登録する' do
      artist_params = { artist: {genre_content: 'POPS', artist: 'サザンオールスターズ'} }
      expect { post '/artists', params: artist_params }.to change(Artist, :count).by(+1)
    end
  end
end