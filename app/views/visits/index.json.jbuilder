json.array!(@visits) do |visit|
  json.extract! visit, :id, :day, :start, :finish, :description
  json.url visit_url(visit, format: :json)
end
