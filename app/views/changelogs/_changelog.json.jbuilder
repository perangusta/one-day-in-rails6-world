json.extract! changelog, :id, :title, :description, :created_at, :updated_at
json.url changelog_url(changelog, format: :json)
