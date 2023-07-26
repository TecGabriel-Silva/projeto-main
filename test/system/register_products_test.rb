require "application_system_test_case"

class RegisterProductsTest < ApplicationSystemTestCase
  setup do
    @register_product = register_products(:one)
  end

  test "visiting the index" do
    visit register_products_url
    assert_selector "h1", text: "Register products"
  end

  test "should create register product" do
    visit register_products_url
    click_on "New register product"

    fill_in "Descricao", with: @register_product.descricao
    fill_in "Titulo", with: @register_product.titulo
    fill_in "Valor", with: @register_product.valor
    click_on "Create Register product"

    assert_text "Register product was successfully created"
    click_on "Back"
  end

  test "should update Register product" do
    visit register_product_url(@register_product)
    click_on "Edit this register product", match: :first

    fill_in "Descricao", with: @register_product.descricao
    fill_in "Titulo", with: @register_product.titulo
    fill_in "Valor", with: @register_product.valor
    click_on "Update Register product"

    assert_text "Register product was successfully updated"
    click_on "Back"
  end

  test "should destroy Register product" do
    visit register_product_url(@register_product)
    click_on "Destroy this register product", match: :first

    assert_text "Register product was successfully destroyed"
  end
end
