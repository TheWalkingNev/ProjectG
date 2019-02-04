class GossipsController < ApplicationController
  def get_gossip_id

  end
  def create_gossip
  end
  def create_gossip_and_user
    puts "$" * 50
    User.create(username: params['gossip_username'])
    Gossip.create(user_id: User.last.id, title: params['gossip_title'], content: params['gossip_content'])
    puts "$" * 50
    puts Gossip.all
    puts User.all
    redirect_to '/'
  end
end
