require "application_system_test_case"

class ScrollzsTest < ApplicationSystemTestCase
  setup do
    @scrollz = scrollzs(:one)
  end

  test "visiting the index" do
    visit scrollzs_url
    assert_selector "h1", text: "Scrollzs"
  end

  test "creating a Scrollz" do
    visit scrollzs_url
    click_on "New Scrollz"

    click_on "Create Scrollz"

    assert_text "Scrollz was successfully created"
    click_on "Back"
  end

  test "updating a Scrollz" do
    visit scrollzs_url
    click_on "Edit", match: :first

    click_on "Update Scrollz"

    assert_text "Scrollz was successfully updated"
    click_on "Back"
  end

  test "destroying a Scrollz" do
    visit scrollzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scrollz was successfully destroyed"
  end
end
