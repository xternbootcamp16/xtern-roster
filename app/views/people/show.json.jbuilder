json.person do
  json.id @person.id
  json.name @person.name
  json.promoted @person.promoted
  json.created_at @person.created_at
  json.updated_at @person.updated_at
  json.rivalries do
    json.array! @person.rivalries do |rivalry|
      json.id rivalry.id
      json.url rivalry_url(rivalry, format: 'json')

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
    end
  end
end
