json.extract! donation, :id, :donar_name, :need_user, :amount, :getter_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
