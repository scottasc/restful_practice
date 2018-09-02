json.array! @lizards.each do |lizard|
  json.id lizard.id
  json.color lizard.color
  json.lifespan lizard.lifespan
end