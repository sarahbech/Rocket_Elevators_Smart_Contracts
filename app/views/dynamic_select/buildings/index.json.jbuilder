json.array!(@buildings) do |building|
    json.extract! building, :id, :id
  end