class Genre < ApplicationRecord
  has_many :musics, dependent: :destroy
  validates :content, uniqueness: true, presence: true
end
