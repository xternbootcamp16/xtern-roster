json.array!(@rivalries) do |rivalry|
  json.extract! rivalry, :id, :person_id
  json.person do
    json.id rivalry.person.id
    json.name rivalry.person.name
    json.url person_url(rivalry.person)
  end
  if rivalry.rival.present?
    json.rival do
      json.id rivalry.rival.id
      json.name rivalry.rival.name
      json.url person_url(rivalry.rival)
    end
  else
    json.rival do
      json.url rivalry.pokemon_url
    end
  end
  json.url rivalry_url(rivalry, format: :json)
end
