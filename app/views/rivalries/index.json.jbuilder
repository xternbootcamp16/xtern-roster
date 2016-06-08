json.array!(@rivalries) do |rivalry|
  json.extract! rivalry, :id, :person_id
  json.url rivalry_url(rivalry, format: :json)
end
