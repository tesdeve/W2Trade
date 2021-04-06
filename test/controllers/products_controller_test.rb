require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { action: @product.action, aduana: @product.aduana, bought: @product.bought, exchange_rate: @product.exchange_rate, flete: @product.flete, impuesto: @product.impuesto, name: @product.name, peso: @product.peso, seguro: @product.seguro, total_cost: @product.total_cost, total_envio_cop: @product.total_envio_cop, total_envio_usd: @product.total_envio_usd, valor_cop: @product.valor_cop, valor_maximo_cop: @product.valor_maximo_cop, valor_usd: @product.valor_usd } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { action: @product.action, aduana: @product.aduana, bought: @product.bought, exchange_rate: @product.exchange_rate, flete: @product.flete, impuesto: @product.impuesto, name: @product.name, peso: @product.peso, seguro: @product.seguro, total_cost: @product.total_cost, total_envio_cop: @product.total_envio_cop, total_envio_usd: @product.total_envio_usd, valor_cop: @product.valor_cop, valor_maximo_cop: @product.valor_maximo_cop, valor_usd: @product.valor_usd } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
