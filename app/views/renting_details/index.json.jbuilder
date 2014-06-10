json.array!(@renting_details) do |renting_detail|
  json.extract! renting_detail, :id, :shortdescription, :longdescription
  json.url renting_detail_url(renting_detail, format: :json)
end
