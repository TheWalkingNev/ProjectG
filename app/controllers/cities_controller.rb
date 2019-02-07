class CitiesController < ApplicationController
  before_action :authenticate_user

  def index
    # Liste de toutes les villes.
  end

  def show
    # Affichage d'une ville en particulier avec affichage de tout ses users et leurs gossips.
    @city_id = params[:id]
    @city_name = City.find(params[:id]).name
    @city_zip_code = City.find(params[:id]).zip_code
    @city_users = City.find(params[:id]).users
  end
end
