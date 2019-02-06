require "rails_helper"

  RSpec.describe "gossips/show" do

    before(:each) do
      @gossip = FactoryBot.create(:gossip)
    end

    it "has a valid factory" do
      expect(build(:gossip)).to be_valid
    end

    it "displays the correct page for a gossip" do
      controller.extra_params = { :id => @gossip.id }
      expect(controller.request.fullpath).to eq gossip_path(controller.extra_params)
    end
  end
