json.array!(@entries) do |entry|
  json.extract! entry, :id, :nick, :r1, :r2, :r3, :r4, :r5, :r6, :tournament_id
  json.url entry_url(entry, format: :json)
end
