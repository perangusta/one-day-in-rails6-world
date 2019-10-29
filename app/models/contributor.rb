class Contributor < ApplicationRecord
  connects_to database: { writing: :contributors }
end
