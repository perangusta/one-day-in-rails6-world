namespace :changelogs do
  desc 'changelogs seed task'
  task :seed do
    Changelog.create(
      title: 'brand new feature',
      description: 'This is the first changelog record, enjoy!',
      rich_description: '<strong>First changelog</strong>: Enjoy!')
  end
end
