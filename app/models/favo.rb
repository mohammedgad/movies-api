class Favo < ApplicationRecord
  validates_presence_of :movie_title, :movie_id, :movie_poster, :movie_overview
end
