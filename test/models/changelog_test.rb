require 'test_helper'

class ChangelogTest < ActiveSupport::TestCase
  test "title is missing" do
    changelog = Changelog.new(title: nil)
    changelog.valid?
    assert changelog.errors.of_kind? :title, :blank
    # highlight parallel testing
    sleep 3
  end

  test "title is too short" do
    changelog = Changelog.new(title: 'ab')
    changelog.valid?
    assert changelog.errors.of_kind? :title, :too_short
    # highlight parallel testing
    sleep 3
  end
end
