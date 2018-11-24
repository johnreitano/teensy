require 'rails_helper'

RSpec.describe "UrlMappings", type: :request do
  describe "GET /url_mappings" do
    it "works! (now write some real specs)" do
      get url_mappings_path
      expect(response).to have_http_status(200)
    end
  end
end
