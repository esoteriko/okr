require "application_system_test_case"

class KeyResultsTest < ApplicationSystemTestCase
  setup do
    @key_result = key_results(:one)
  end

  test "visiting the index" do
    visit key_results_url
    assert_selector "h1", text: "Key Results"
  end

  test "creating a Key result" do
    visit key_results_url
    click_on "New Key Result"

    fill_in "Description", with: @key_result.description
    fill_in "Kr Measure", with: @key_result.kr_measure_id
    fill_in "Objective", with: @key_result.objective_id
    click_on "Create Key result"

    assert_text "Key result was successfully created"
    click_on "Back"
  end

  test "updating a Key result" do
    visit key_results_url
    click_on "Edit", match: :first

    fill_in "Description", with: @key_result.description
    fill_in "Kr Measure", with: @key_result.kr_measure_id
    fill_in "Objective", with: @key_result.objective_id
    click_on "Update Key result"

    assert_text "Key result was successfully updated"
    click_on "Back"
  end

  test "destroying a Key result" do
    visit key_results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Key result was successfully destroyed"
  end
end
