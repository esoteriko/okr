require "application_system_test_case"

class KrMeasuresTest < ApplicationSystemTestCase
  setup do
    @kr_measure = kr_measures(:one)
  end

  test "visiting the index" do
    visit kr_measures_url
    assert_selector "h1", text: "Kr Measures"
  end

  test "creating a Kr measure" do
    visit kr_measures_url
    click_on "New Kr Measure"

    fill_in "Name", with: @kr_measure.name
    click_on "Create Kr measure"

    assert_text "Kr measure was successfully created"
    click_on "Back"
  end

  test "updating a Kr measure" do
    visit kr_measures_url
    click_on "Edit", match: :first

    fill_in "Name", with: @kr_measure.name
    click_on "Update Kr measure"

    assert_text "Kr measure was successfully updated"
    click_on "Back"
  end

  test "destroying a Kr measure" do
    visit kr_measures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kr measure was successfully destroyed"
  end
end
