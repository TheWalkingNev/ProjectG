class ApplicationController < ActionController::Base
  include SessionsHelper
  flash = { danger: "It failed." }

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Tu n'es pas connecté(e)"
      redirect_to new_session_path
    end
  end
end
