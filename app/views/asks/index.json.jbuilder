json.array!(@asks) do |ask|
  json.extract! ask, :id, :question
  json.url ask_url(ask, format: :json)
end
