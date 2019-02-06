require "rails_helper"

  RSpec.describe "static_pages/team" do
    it "has a request.fullpath that is defined" do
      expect(controller.request.fullpath).to eq team_path
    end
  end
