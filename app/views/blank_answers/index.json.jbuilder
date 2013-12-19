json.array!(@blank_answers) do |blank_answer|
  json.extract! blank_answer, :id, :answer
  json.url blank_answer_url(blank_answer, format: :json)
end
