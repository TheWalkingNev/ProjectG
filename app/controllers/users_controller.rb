class UsersController < ApplicationController
  before_action :authenticate_user, except: [:new, :create]

  def index
  end

  def show  # Affichage d'un profil en particulier.
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

  def new # Formulaire d'inscription sur le site
  end

  def create  # Inscription d'un nouvel user.
    city = City.new(name: params['user_city'], zip_code: rand(1..99999))
    save_city = true

    if City.find_by(name: params['user_city']) # Vérifie si la ville existe déjà dans la DB
      what_city_id = City.find_by(name: params['user_city']).id
      save_city = false
    else
      City.count == 0 ? what_city_id = 1 : what_city_id = City.last.id + 1
    end

    user = User.new(city_id: what_city_id, first_name: params['user_first_name'], last_name: params['user_last_name'], username: params['user_username'], email: params['user_email'], age: params['user_age'], description: params['user_description'], password: params['user_password'])

    if save_city == true
      if city.save && user.save
        redirect_to welcome_path(user.id)
      else
        render new_user_path
      end
    else
      if user.save
        redirect_to welcome_path(user.id)
      else
        render new_user_path
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
