json.rivalry do
  json.id  @rivalry.id
  json.person_id @rivalry.person_id
  json.rival_id @rivalry.rival_id
  json.pokemon_url @rivalry.pokemon_url
  json.person do
    json.id @rivalry.person.id
    json.name @rivalry.person.name
    json.url person_url(@rivalry.person)
  end
  if @rivalry.rival.present?
    json.rival do
      json.id @rivalry.rival.id
      json.name @rivalry.rival.name
      json.url person_url(@rivalry.rival)
    end
  else
    json.rival do
      json.url @rivalry.pokemon_url
    end
  end
  json.created_at @rivalry.created_at
  json.updated_at @rivalry.updated_at
end
