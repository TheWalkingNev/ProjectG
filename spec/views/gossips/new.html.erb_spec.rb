require "rails_helper"

  RSpec.describe "gossips/new" do
    it "has a request.fullpath that is defined" do
      expect(controller.request.fullpath).to eq new_gossip_path
    end
  end
