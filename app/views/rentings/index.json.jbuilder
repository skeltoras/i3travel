json.array!(@rentings) do |renting|
  json.extract! renting, :id
  json.url renting_url(renting, format: :json)
end
