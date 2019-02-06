require "rails_helper"

  RSpec.describe "static_pages/index" do
    it "has a request.fullpath that is defined" do
      expect(controller.request.fullpath).to eq root_path
    end
  end
