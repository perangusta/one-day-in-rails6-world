class Changelog < ApplicationRecord
  has_rich_text :rich_description

  validates :title, presence: true, length: { minimum: 3 }
end
