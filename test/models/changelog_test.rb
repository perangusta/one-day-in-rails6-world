require 'test_helper'

class ChangelogTest < ActiveSupport::TestCase
  test "title is missing" do
    changelog = Changelog.new(title: nil)
    changelog.valid?
    assert changelog.errors.of_kind? :title, :blank
  end
end
