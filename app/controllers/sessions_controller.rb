class SessionsController < ApplicationController

  def new # Page de connexion
  end

  def create  # Création de la session
    user = User.find_by(email: params['user_email'])
    if user && user.authenticate(params['user_password'])
      log_in(user)
      redirect_to welcome_path(user.id)
    else
      render 'new'
    end
  end

  def destroy # Fermeture de la session
    session.delete(:user_id)
    redirect_to root_path
  end
end
