class Favo < ApplicationRecord
  validates_presence_of :movie_title, :movie_id, :movie_poster, :movie_overview, :user_id
  belongs_to :user
end
