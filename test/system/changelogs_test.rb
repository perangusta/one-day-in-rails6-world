require "application_system_test_case"

class ChangelogsTest < ApplicationSystemTestCase
  setup do
    @changelog = changelogs(:one)
  end

  test "visiting the index" do
    visit changelogs_url
    assert_selector "h1", text: "Changelogs"
  end

  test "creating a Changelog" do
    visit changelogs_url
    click_on "New Changelog"

    fill_in "Description", with: @changelog.description
    fill_in "Title", with: @changelog.title
    click_on "Create Changelog"

    assert_text "Changelog was successfully created"
    click_on "Back"
  end

  test "updating a Changelog" do
    visit changelogs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @changelog.description
    fill_in "Title", with: @changelog.title
    click_on "Update Changelog"

    assert_text "Changelog was successfully updated"
    click_on "Back"
  end

  test "destroying a Changelog" do
    visit changelogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Changelog was successfully destroyed"
  end
end
