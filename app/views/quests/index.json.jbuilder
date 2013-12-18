json.array!(@quests) do |quest|
  json.extract! quest, :id, :title, :content
  json.url quest_url(quest, format: :json)
end
