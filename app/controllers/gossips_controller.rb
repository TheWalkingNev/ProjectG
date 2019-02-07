class GossipsController < ApplicationController
  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
    @gossip_id = params[:id]
    @gossip_user_username = Gossip.find(params[:id]).user.username
    @gossip_user_id = Gossip.find(params[:id]).user.id
    @gossip_user_city = Gossip.find(params[:id]).user.city.name
    @gossip_user_city_id = Gossip.find(params[:id]).user.city_id
    @gossip_title = Gossip.find(params[:id]).title
    @gossip_content = Gossip.find(params[:id]).content
    @gossip_created_at = Gossip.find(params[:id]).created_at
    @gossip_comments = Gossip.find(params[:id]).comments
  end

  def new
    # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  end

  def create
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)

    User.create(username: params['gossip_username'])
    @new_gossip = Gossip.new(user_id: User.last.id, title: params['gossip_title'], content: params['gossip_content'])

    if @new_gossip.save
      redirect_to gossips_path
    else
      render new_gossip_path
    end
  end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    @gossip = Gossip.find(params[:id])
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(gossip_params)
    redirect_to gossip_path
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end
end
