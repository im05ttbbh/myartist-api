class ArtistsController < ApplicationController
  def index
    return render json: { status: 200, message: '全てのアーティスト', data: Artist.all } unless params[:artist]

    genre = Genre.find_or_initialize_by(content: artist_params[:genre_content])
    artists = Artist.where(genre_id: genre.id)
    
    if Genre.exists?(content: artist_params[:genre_content])
      render json: { status: 200, message: 'ジャンル名に合致するデータ', data: artists }
    else
      render json: { status: 401, message: 'ジャンル登録がありません' }
    end
  end

  def create
    ActiveRecord::Base.transaction do
      genre = Genre.find_or_create_by(content: artist_params[:genre_content])
      artist = Artist.create(genre_id: genre.id, artist: artist_params[:artist])
      render json: { status: 201, message: '登録できました', data: artist }
    end
  rescue ActiveRecord::RecordInvalid
    render json: { status: 422, message: '登録できませんでした', data: artist.errors }
  end

  private

  def artist_params
    params.require(:artist).permit(:artist, :genre_content)
  end
end