class CommentsController < ApplicationController
  before_action :authenticate_user
  flash = { success: "It worked!", danger: "It failed." }

  def create
    @comment = Comment.new(gossip_id: params[:gossip_id], user_id: current_user.id, content: params['comment_content'])
    if @comment.save      # si ça marche, le comment est save et le user est redirigé vers la même page avec un message success
      flash[:success] = 'Commentaire ajouté avec succés.'
      redirect_to gossip_path(params[:gossip_id])
    else                  # sinon, refresh de la page avec un message d'erreur
      flash[:danger] = 'Quelques chose ne va pas.'
      redirect_to gossip_path(params[:gossip_id])
      flash.delete(:danger)
    end
  end

  def update
  end

  def destroy
  end
end
