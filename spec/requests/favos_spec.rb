require 'rails_helper'

RSpec.describe "Favos", type: :request do
  describe "GET /favos" do
    it "works! (now write some real specs)" do
      get favos_path
      expect(response).to have_http_status(200)
    end
  end
end
