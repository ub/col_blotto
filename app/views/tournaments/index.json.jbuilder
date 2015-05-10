json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :open
  json.url tournament_url(tournament, format: :json)
end
