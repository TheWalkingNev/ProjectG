require "rails_helper"

RSpec.describe UsersController, :type => :controller do

  before(:each) do
    @city = FactoryBot.create(:city)
  end

  it "has a valid factory" do
    expect(build(:city)).to be_valid
  end
end
