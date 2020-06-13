class GenresController < ApplicationController
  def index
    return render json: { status: 200, message: '全てのジャンル', data: Genre.all }
  end
end
