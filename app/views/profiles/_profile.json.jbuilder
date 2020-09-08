json.extract! profile, :id, :description, :skills, :linkedin_url, :age, :city, :user_id, :sector_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
