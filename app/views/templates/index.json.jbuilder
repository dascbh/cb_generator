json.array!(@templates) do |template|
  json.extract! template, :id, :name, :expected_name, :file_path
  json.url template_url(template, format: :json)
end
