json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :lesson_id
  json.url teacher_url(teacher, format: :json)
end
