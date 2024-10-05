require 'rails_helper'

RSpec.describe "Activities", type: :request do
  describe "POST /activities" do
    it "creates a new activity" do
      activity_params = {
        activity: {
          title: "Capilano River",
          description: "Woo fun!",
          location: "Vancouver",
          image_url: "http://example.com/image.jpg"
        }
      }

      post activities_path, params: activity_params

      expect(response).to have_http_status(:created)
      expect(json['title']).to eq("Capilano River")
    end
  end
end
