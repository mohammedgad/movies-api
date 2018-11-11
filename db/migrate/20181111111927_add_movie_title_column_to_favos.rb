class AddMovieTitleColumnToFavos < ActiveRecord::Migration[5.2]
  def change
    add_column :favos, :movie_title, :string
  end
end
