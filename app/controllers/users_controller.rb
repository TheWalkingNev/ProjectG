class UsersController < ApplicationController
  def index
    # Page de bienvenue personnalisée à l'utilisateur - Welcome screen !
    @user = params[:id]
  end

  def show
    # Affichage d'un profil en particulier.
    @user_id = params[:id]
    @user_first_name = User.find(params[:id]).first_name
    @user_last_name = User.find(params[:id]).last_name
    @user_username = User.find(params[:id]).username
    @user_city_name = User.find(params[:id]).city.name
    @user_city_id = User.find(params[:id]).city.id
    @user_age = User.find(params[:id]).age
    @user_email = User.find(params[:id]).email
    @user_description = User.find(params[:id]).description
    @user_city = User.find(params[:id]).city.name
    @user_gossips = User.find(params[:id]).gossips
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
