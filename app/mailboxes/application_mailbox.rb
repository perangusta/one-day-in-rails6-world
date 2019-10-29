class ApplicationMailbox < ActionMailbox::Base
  routing %r{\Achangelogs@}i => :changelogs
end
