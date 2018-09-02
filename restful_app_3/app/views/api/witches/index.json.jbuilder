json.array! @witches.each do |witch|
  json.id witch.id
  json.name witch.name
  json.favorite_spell witch.favorite_spell
end