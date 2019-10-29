class Changelog < ApplicationRecord
  self.implicit_order_column = :updated_at

  has_rich_text :rich_description

  validates :title, presence: true, length: { minimum: 3 }

  enum status: { draft: 0, published: 1 }, _scopes: false

  scope :last_10_published, -> { order(created_at: :desc).where(status: :published).first(10) }
  scope :since, ->(date) { where(updated_at: (date..)) }
end
