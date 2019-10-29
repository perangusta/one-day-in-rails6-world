class Changelog < ApplicationRecord
  has_rich_text :rich_description

  validates :title, presence: true, length: { minimum: 3 }

  enum status: { draft: 0, published: 1 }
end
