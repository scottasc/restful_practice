json.array! @languages.each do |language|
  json.id language.id
  json.name language.name
  json.family language.family
end
