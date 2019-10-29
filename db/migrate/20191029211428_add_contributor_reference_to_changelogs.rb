class AddContributorReferenceToChangelogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :changelogs, :contributor
  end
end
