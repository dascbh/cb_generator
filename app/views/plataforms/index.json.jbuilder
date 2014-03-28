json.array!(@plataforms) do |plataform|
  json.extract! plataform, :id, :name
  json.url plataform_url(plataform, format: :json)
end
