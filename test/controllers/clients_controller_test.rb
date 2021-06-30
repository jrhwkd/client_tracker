require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
<<<<<<< HEAD
      post clients_url, params: { client: { clienttype_id: @client.clienttype_id, company: @client.company, email: @client.email, first_name: @client.first_name, last: @client.last, manager_id: @client.manager_id, phone: @client.phone } }
=======
      post clients_url, params: { client: { address: @client.address, company: @client.company, email: @client.email, first_name: @client.first_name, last_name: @client.last_name, manager_id: @client.manager_id, phone: @client.phone, sector_id: @client.sector_id } }
>>>>>>> rollback
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
<<<<<<< HEAD
    patch client_url(@client), params: { client: { clienttype_id: @client.clienttype_id, company: @client.company, email: @client.email, first_name: @client.first_name, last: @client.last, manager_id: @client.manager_id, phone: @client.phone } }
=======
    patch client_url(@client), params: { client: { address: @client.address, company: @client.company, email: @client.email, first_name: @client.first_name, last_name: @client.last_name, manager_id: @client.manager_id, phone: @client.phone, sector_id: @client.sector_id } }
>>>>>>> rollback
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
