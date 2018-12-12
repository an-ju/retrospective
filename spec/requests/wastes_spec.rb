require 'rails_helper'

RSpec.describe "Wastes", type: :request do
  describe "GET /wastes" do
    it "works! (now write some real specs)" do
      get wastes_path
      expect(response).to have_http_status(200)
    end
  end
end
