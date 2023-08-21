require "application_system_test_case"

class ProducaosTest < ApplicationSystemTestCase
  setup do
    @producao = producaos(:one)
  end

  test "visiting the index" do
    visit producaos_url
    assert_selector "h1", text: "Producaos"
  end

  test "should create producao" do
    visit producaos_url
    click_on "New producao"

    fill_in "Description", with: @producao.description
    fill_in "Name", with: @producao.name
    fill_in "Price", with: @producao.price
    click_on "Create Producao"

    assert_text "Producao was successfully created"
    click_on "Back"
  end

  test "should update Producao" do
    visit producao_url(@producao)
    click_on "Edit this producao", match: :first

    fill_in "Description", with: @producao.description
    fill_in "Name", with: @producao.name
    fill_in "Price", with: @producao.price
    click_on "Update Producao"

    assert_text "Producao was successfully updated"
    click_on "Back"
  end

  test "should destroy Producao" do
    visit producao_url(@producao)
    click_on "Destroy this producao", match: :first

    assert_text "Producao was successfully destroyed"
  end
end
