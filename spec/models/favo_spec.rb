require 'rails_helper'

RSpec.describe Favo, type: :model do
  it { should validate_presence_of(:movie_id) }
  it { should validate_presence_of(:movie_poster) }
  it { should validate_presence_of(:movie_overview) }
end
