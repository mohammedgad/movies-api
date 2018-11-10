class CreateFavos < ActiveRecord::Migration[5.2]
  def change
    create_table :favos do |t|
      t.integer :movie_id
      t.string :movie_poster
      t.text :movie_overview

      t.timestamps
    end
  end
end
