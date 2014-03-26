json.array!(@main_panels) do |main_panel|
  json.extract! main_panel, :id
  json.url main_panel_url(main_panel, format: :json)
end
