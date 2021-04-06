require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Action", with: @product.action
    fill_in "Aduana", with: @product.aduana
    check "Bought" if @product.bought
    fill_in "Exchange rate", with: @product.exchange_rate
    fill_in "Flete", with: @product.flete
    fill_in "Impuesto", with: @product.impuesto
    fill_in "Name", with: @product.name
    fill_in "Peso", with: @product.peso
    fill_in "Seguro", with: @product.seguro
    fill_in "Total cost", with: @product.total_cost
    fill_in "Total envio cop", with: @product.total_envio_cop
    fill_in "Total envio usd", with: @product.total_envio_usd
    fill_in "Valor cop", with: @product.valor_cop
    fill_in "Valor maximo cop", with: @product.valor_maximo_cop
    fill_in "Valor usd", with: @product.valor_usd
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Action", with: @product.action
    fill_in "Aduana", with: @product.aduana
    check "Bought" if @product.bought
    fill_in "Exchange rate", with: @product.exchange_rate
    fill_in "Flete", with: @product.flete
    fill_in "Impuesto", with: @product.impuesto
    fill_in "Name", with: @product.name
    fill_in "Peso", with: @product.peso
    fill_in "Seguro", with: @product.seguro
    fill_in "Total cost", with: @product.total_cost
    fill_in "Total envio cop", with: @product.total_envio_cop
    fill_in "Total envio usd", with: @product.total_envio_usd
    fill_in "Valor cop", with: @product.valor_cop
    fill_in "Valor maximo cop", with: @product.valor_maximo_cop
    fill_in "Valor usd", with: @product.valor_usd
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
