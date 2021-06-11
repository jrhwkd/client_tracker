json.extract! client, :id, :first_name, :last, :email, :phone, :company, :clienttype_id, :manager_id, :created_at, :updated_at
json.url client_url(client, format: :json)
