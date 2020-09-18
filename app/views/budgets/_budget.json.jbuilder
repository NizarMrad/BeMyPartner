# frozen_string_literal: true

json.extract! budget, :id, :amount, :project_id, :created_at, :updated_at
json.url budget_url(budget, format: :json)
