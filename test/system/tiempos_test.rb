require "application_system_test_case"

class TiemposTest < ApplicationSystemTestCase
  setup do
    @tiempo = tiempos(:one)
  end

  test "visiting the index" do
    visit tiempos_url
    assert_selector "h1", text: "Tiempos"
  end

  test "creating a Tiempo" do
    visit tiempos_url
    click_on "New Tiempo"

    fill_in "Name", with: @tiempo.name
    click_on "Create Tiempo"

    assert_text "Tiempo was successfully created"
    click_on "Back"
  end

  test "updating a Tiempo" do
    visit tiempos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @tiempo.name
    click_on "Update Tiempo"

    assert_text "Tiempo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tiempo" do
    visit tiempos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tiempo was successfully destroyed"
  end
end
