require 'rails_helper'

RSpec.describe "cities/show.html.erb", type: :view do
  before(:each) do
    @city = FactoryBot.create(:city)
  end

  it "has a valid factory" do
    expect(build(:city)).to be_valid
  end

  it "displays the correct page for a gossip" do
    controller.extra_params = { :id => @city.id }
    expect(controller.request.fullpath).to eq city_path(controller.extra_params)
  end
end
