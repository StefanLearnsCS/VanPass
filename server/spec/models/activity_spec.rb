require 'rails_helper'

RSpec.describe Activity, type: :model do
  # Test validation for title presence
  it "is valid with a title, description, location, and image_url" do
    activity = Activity.new(
      title: "Capilano River",
      description: "Woo fun!",
      location: "Vancouver",
      image_url: "http://example.com/image.jpg"
    )
    expect(activity).to be_valid
  end

  it "is invalid without a title" do
    activity = Activity.new(
      description: "Woo fun!",
      location: "Vancouver",
      image_url: "http://example.com/image.jpg"
    )
    expect(activity).not_to be_valid
  end

  # Test presence validation
  it "is invalid without a description" do
    activity = Activity.new(
      title: "Capilano River",
      location: "Vancouver",
      image_url: "http://example.com/image.jpg"
    )
    expect(activity).not_to be_valid
  end

  it "is invalid without a location" do
    activity = Activity.new(
      title: "Capilano River",
      description: "Woo fun!",
      image_url: "http://example.com/image.jpg"
    )
    expect(activity).not_to be_valid
  end

  # Ensure valid URL for image_url
  it "is valid with a valid image_url" do
    activity = Activity.new(
      title: "Capilano River",
      description: "Woo fun!",
      location: "Vancouver",
      image_url: "http://example.com/image.jpg"
    )
    expect(activity).to be_valid
  end

  it "is invalid with an invalid image_url" do
    activity = Activity.new(
      title: "Capilano River",
      description: "Woo fun!",
      location: "Vancouver",
      image_url: "ht://example.coage.jpg"
    )
    expect(activity).not_to be_valid
  end
end
