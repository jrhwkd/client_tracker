require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

<<<<<<< HEAD
    fill_in "Clienttype", with: @client.clienttype_id
    fill_in "Company", with: @client.company
    fill_in "Email", with: @client.email
    fill_in "First name", with: @client.first_name
    fill_in "Last", with: @client.last
    fill_in "Manager", with: @client.manager_id
    fill_in "Phone", with: @client.phone
=======
    fill_in "Address", with: @client.address
    fill_in "Company", with: @client.company
    fill_in "Email", with: @client.email
    fill_in "First name", with: @client.first_name
    fill_in "Last name", with: @client.last_name
    fill_in "Manager", with: @client.manager_id
    fill_in "Phone", with: @client.phone
    fill_in "Sector", with: @client.sector_id
>>>>>>> rollback
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

<<<<<<< HEAD
    fill_in "Clienttype", with: @client.clienttype_id
    fill_in "Company", with: @client.company
    fill_in "Email", with: @client.email
    fill_in "First name", with: @client.first_name
    fill_in "Last", with: @client.last
    fill_in "Manager", with: @client.manager_id
    fill_in "Phone", with: @client.phone
=======
    fill_in "Address", with: @client.address
    fill_in "Company", with: @client.company
    fill_in "Email", with: @client.email
    fill_in "First name", with: @client.first_name
    fill_in "Last name", with: @client.last_name
    fill_in "Manager", with: @client.manager_id
    fill_in "Phone", with: @client.phone
    fill_in "Sector", with: @client.sector_id
>>>>>>> rollback
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
