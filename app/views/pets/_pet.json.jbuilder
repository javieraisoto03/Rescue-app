json.extract! pet, :id, :nombre, :apodo, :fecha, :imagen, :descripcion, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
