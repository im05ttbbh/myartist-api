class Artist < ApplicationRecord
  belongs_to :genre, optional: true
  validates :artist, presence: true
  validates :genre_id, presence: true
end
