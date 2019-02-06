require "rails_helper"

  RSpec.describe "users/show" do

    before(:each) do
      @user = FactoryBot.create(:user)
    end

    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end

    it "displays the correct page for an user~" do
      controller.extra_params = { :id => @user.id }
      expect(controller.request.fullpath).to eq user_path(controller.extra_params)
    end
  end
