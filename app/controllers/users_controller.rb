class UsersController < ApplicationController
  def index
    # Méthode qui récupère tous les users et les envoie à la view index (index.html.erb) pour affichage
    @user = params[:id]
  end

  def show
    #Méthode qui récupère le user concerné et l'envoie à la view show (show.html.erb) pour affichage
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
    # Méthode qui crée un user vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    # Méthode qui créé un user à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le user créé)
  end

  def edit
    # Méthode qui récupère le user concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le user à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le user modifié)
  end

  def destroy
    # Méthode qui récupère le user concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end
