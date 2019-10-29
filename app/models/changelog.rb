class Changelog < ApplicationRecord
  has_rich_text :rich_description

  validates :title, presence: true
end
