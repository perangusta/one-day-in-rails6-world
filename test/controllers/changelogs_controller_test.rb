require 'test_helper'

class ChangelogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @changelog = changelogs(:one)
  end

  test "should get index" do
    get changelogs_url
    assert_response :success
  end

  test "should get new" do
    get new_changelog_url
    assert_response :success
  end

  test "should create changelog" do
    assert_difference('Changelog.count') do
      post changelogs_url, params: { changelog: { description: @changelog.description, title: @changelog.title } }
    end

    assert_redirected_to changelog_url(Changelog.last)
  end

  test "should show changelog" do
    get changelog_url(@changelog)
    assert_response :success
  end

  test "should get edit" do
    get edit_changelog_url(@changelog)
    assert_response :success
  end

  test "should update changelog" do
    patch changelog_url(@changelog), params: { changelog: { description: @changelog.description, title: @changelog.title } }
    assert_redirected_to changelog_url(@changelog)
  end

  test "should destroy changelog" do
    assert_difference('Changelog.count', -1) do
      delete changelog_url(@changelog)
    end

    assert_redirected_to changelogs_url
  end
end
