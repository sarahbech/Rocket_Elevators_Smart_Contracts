json.extract! intervention, :id, :created_at, :updated_at
json.url intervention_url(intervention, format: :json)

json.array!(@buildings) do |building|
    json.extract! building, :id, :id
  end
