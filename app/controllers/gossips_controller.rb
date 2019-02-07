class GossipsController < ApplicationController
  def index
    # Affichage de l'ensemble des gossips.
  end

  def show
    # Déclaration des variables utilisées sur la page. Et oui ça en fait un paquet !!!
    @gossip_id = params[:id]
    @gossip_user_username = Gossip.find(params[:id]).user.username
    @gossip_user_id = Gossip.find(params[:id]).user.id
    @gossip_user_city_name = Gossip.find(params[:id]).user.city.name
    @gossip_user_city_id = Gossip.find(params[:id]).user.city_id
    @gossip_title = Gossip.find(params[:id]).title
    @gossip_content = Gossip.find(params[:id]).content
    @gossip_created_at = Gossip.find(params[:id]).created_at
    @gossip_comments = Gossip.find(params[:id]).comments
  end

  def new
  end

  def create
    # Fonction appelée lors de la création d'un gossip.
    User.create(username: params['gossip_username'])
    @new_gossip = Gossip.new(user_id: User.last.id, title: params['gossip_title'], content: params['gossip_content'])

    if @new_gossip.save
      redirect_to gossips_path
    else
      render new_gossip_path
    end
  end

  def edit
    # Pour custom ton histoire, direction le salon de l'edit. De quoi te rappeler tes week-ends tuning avec Jackie et sa super dedeuch tunée à souhait !
    @gossip = Gossip.find(params[:id])
  end

  def update
    # Une fois que tu as choisi quoi tuner, on y met un ptit coup de polish.
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(gossip_params)
    redirect_to gossip_path
  end

  def destroy
    # Suppresion d'un gossip. Mieux qu'un rollback.
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end
end
