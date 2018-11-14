class AddMovieUserIndexToFavos < ActiveRecord::Migration[5.2]
  def change
    add_index :favos, [:movie_id, :user_id], unique: true
  end
end
