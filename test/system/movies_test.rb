require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "creating a Movie" do
    visit movies_url
    click_on "New Movie"

    fill_in "Beskrivelse", with: @movie.description
    fill_in "Titel", with: @movie.title

    click_on "Gem film"
    assert_selector ".imdbref", text: "tt0353496"
    assert_text "Movie was successfully created"
    click_on "Tilbage"
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h3", text: "Mine bedste film"
  end

  test "destroying a Movie" do
    visit movies_url
    page.accept_confirm do
      click_on "Slet", match: :first
    end
    assert_text "Movie was successfully destroyed"
  end
end
