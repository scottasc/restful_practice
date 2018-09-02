json.array! @birds.each do |bird|
  json.id bird.id
  json.species bird.species
  json.color bird.color
end