json.rivalry do
  json.id  @rivalry.id
  json.person do
    json.id @rivalry.person.id
    json.name @rivalry.person.name
  end
  json.rival do
    json.id @rivalry.rival.id
    json.name @rivalry.rival.name
  end
  json.created_at @rivalry.created_at
  json.updated_at @rivalry.updated_at
end
