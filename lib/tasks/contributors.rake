namespace :contributors do
  desc "contributors seed data"
  task :seed => :environment do
    Contributor.create!(login: 'jgigault')
    Contributor.create!(login: 'bellef')
  end
end
