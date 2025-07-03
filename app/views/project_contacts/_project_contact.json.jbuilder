json.extract! project_contact, :id, :name, :email, :phone, :project_id, :created_at, :updated_at
json.url project_contact_url(project_contact, format: :json)
