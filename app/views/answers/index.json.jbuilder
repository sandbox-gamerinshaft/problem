json.array!(@answers) do |answer|
  json.extract! answer, :id, :check, :text
  json.url answer_url(answer, format: :json)
end
