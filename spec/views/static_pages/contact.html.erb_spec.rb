require "rails_helper"

  RSpec.describe "static_pages/contact" do
    it "has a request.fullpath that is defined" do
      expect(controller.request.fullpath).to eq contact_path
    end
  end
