class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.bigint :genre_id, null: false
      t.text :artist, null: false

      t.timestamps
    end
  end
end
