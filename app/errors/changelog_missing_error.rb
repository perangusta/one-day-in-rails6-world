class ChangelogMissingError < StandardError
  include ActiveSupport::ActionableError

  action "Seed changelogs" do
    Rails::Command.invoke 'changelogs:seed'
  end
end
