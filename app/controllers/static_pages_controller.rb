class StaticPagesController < ApplicationController
  before_action :authenticate_user, only: [:welcome]

  def index # landing page
  end

  def contact # ET téléphone maison
  end

  def team  # The Super Fuck Friends
  end

  def welcome # Welcome screen
  end
end
