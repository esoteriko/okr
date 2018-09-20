require 'test_helper'

class KrMeasuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kr_measure = kr_measures(:one)
  end

  test "should get index" do
    get kr_measures_url
    assert_response :success
  end

  test "should get new" do
    get new_kr_measure_url
    assert_response :success
  end

  test "should create kr_measure" do
    assert_difference('KrMeasure.count') do
      post kr_measures_url, params: { kr_measure: { name: @kr_measure.name } }
    end

    assert_redirected_to kr_measure_url(KrMeasure.last)
  end

  test "should show kr_measure" do
    get kr_measure_url(@kr_measure)
    assert_response :success
  end

  test "should get edit" do
    get edit_kr_measure_url(@kr_measure)
    assert_response :success
  end

  test "should update kr_measure" do
    patch kr_measure_url(@kr_measure), params: { kr_measure: { name: @kr_measure.name } }
    assert_redirected_to kr_measure_url(@kr_measure)
  end

  test "should destroy kr_measure" do
    assert_difference('KrMeasure.count', -1) do
      delete kr_measure_url(@kr_measure)
    end

    assert_redirected_to kr_measures_url
  end
end
