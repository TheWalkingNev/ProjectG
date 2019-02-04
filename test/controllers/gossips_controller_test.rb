require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get create_gossip" do
    get gossips_create_gossip_url
    assert_response :success
  end

  test "should get get_gossip_id" do
    get gossips_get_gossip_id_url
    assert_response :success
  end

end
