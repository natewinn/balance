json.array!(@rakes) do |rake|
  json.extract! rake, :id, :db
  json.url rake_url(rake, format: :json)
end
