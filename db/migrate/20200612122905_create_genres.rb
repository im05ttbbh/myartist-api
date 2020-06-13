class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres, id: false do |t|
      t.column :id, 'BIGINT PRIMARY KEY AUTO_INCREMENT'
      t.string :content, null: false

      t.timestamps
    end
  end
end
