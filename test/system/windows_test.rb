require "application_system_test_case"

class WindowsTest < ApplicationSystemTestCase
  setup do
    @window = windows(:one)
  end

  test "visiting the index" do
    visit windows_url
    assert_selector "h1", text: "Windows"
  end

  test "creating a Window" do
    visit windows_url
    click_on "New Window"

    click_on "Create Window"

    assert_text "Window was successfully created"
    click_on "Back"
  end

  test "updating a Window" do
    visit windows_url
    click_on "Edit", match: :first

    click_on "Update Window"

    assert_text "Window was successfully updated"
    click_on "Back"
  end

  test "destroying a Window" do
    visit windows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Window was successfully destroyed"
  end
end
