class CitiesController < ApplicationController
  def index
  end

  def show
    @city_id = params[:id]
    @city_name = City.find(params[:id]).name
    @city_zip_code = City.find(params[:id]).zip_code
    @city_users = City.find(params[:id]).users
  end
end
