require 'test_helper'

class TiemposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tiempo = tiempos(:one)
  end

  test "should get index" do
    get tiempos_url
    assert_response :success
  end

  test "should get new" do
    get new_tiempo_url
    assert_response :success
  end

  test "should create tiempo" do
    assert_difference('Tiempo.count') do
      post tiempos_url, params: { tiempo: { name: @tiempo.name } }
    end

    assert_redirected_to tiempo_url(Tiempo.last)
  end

  test "should show tiempo" do
    get tiempo_url(@tiempo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tiempo_url(@tiempo)
    assert_response :success
  end

  test "should update tiempo" do
    patch tiempo_url(@tiempo), params: { tiempo: { name: @tiempo.name } }
    assert_redirected_to tiempo_url(@tiempo)
  end

  test "should destroy tiempo" do
    assert_difference('Tiempo.count', -1) do
      delete tiempo_url(@tiempo)
    end

    assert_redirected_to tiempos_url
  end
end
