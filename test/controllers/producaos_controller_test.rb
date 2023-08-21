require "test_helper"

class ProducaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producao = producaos(:one)
  end

  test "should get index" do
    get producaos_url
    assert_response :success
  end

  test "should get new" do
    get new_producao_url
    assert_response :success
  end

  test "should create producao" do
    assert_difference("Producao.count") do
      post producaos_url, params: { producao: { description: @producao.description, name: @producao.name, price: @producao.price } }
    end

    assert_redirected_to producao_url(Producao.last)
  end

  test "should show producao" do
    get producao_url(@producao)
    assert_response :success
  end

  test "should get edit" do
    get edit_producao_url(@producao)
    assert_response :success
  end

  test "should update producao" do
    patch producao_url(@producao), params: { producao: { description: @producao.description, name: @producao.name, price: @producao.price } }
    assert_redirected_to producao_url(@producao)
  end

  test "should destroy producao" do
    assert_difference("Producao.count", -1) do
      delete producao_url(@producao)
    end

    assert_redirected_to producaos_url
  end
end
