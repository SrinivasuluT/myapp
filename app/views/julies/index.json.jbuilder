json.array!(@julies) do |july|
  json.extract! july, :id, :day, :month
  json.url july_url(july, format: :json)
end
