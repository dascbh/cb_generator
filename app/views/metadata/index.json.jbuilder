json.array!(@metadata) do |metadatum|
  json.extract! metadatum, :id, :name, :content
  json.url metadatum_url(metadatum, format: :json)
end
