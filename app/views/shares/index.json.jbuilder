json.array!(@shares) do |share|
  json.extract! share, :id
  json.url share_url(share, format: :json)
end
