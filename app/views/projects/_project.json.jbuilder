json.extract! project, :id, :title, :description, :budget_id, :profile_needed, :files, :city, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
