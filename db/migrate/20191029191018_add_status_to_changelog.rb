class AddStatusToChangelog < ActiveRecord::Migration[6.0]
  def change
    add_column :changelogs, :status, :integer, default: 0
  end
end
