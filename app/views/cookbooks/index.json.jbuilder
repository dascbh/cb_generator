json.array!(@cookbooks) do |cookbook|
  json.extract! cookbook, :id, :name, :node_id, :role_id, :current_version, :description, :aix, :linux, :windows, :comments, :metadata_id, :template_id, :has_template, :released
  json.url cookbook_url(cookbook, format: :json)
end
