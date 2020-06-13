require 'rails_helper'

RSpec.describe Genre, type: :model do
  before do
    @genre = build(:genre)
  end

  describe "バリデーション" do
    it "Genreのcontentがgenre_content_1になっていればOK" do
      expect(@genre.content).to eq("genre_content_1")
    end

    it "contentの値があればOK" do
      expect(@genre.valid?).to eq(true)
    end

    it "contentが空だとNG" do
      @genre.content = ""
      expect(@genre.valid?).to eq(false)
    end
  end
end
