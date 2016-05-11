json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :lesson_code, :teacher_id, :student_id
  json.url lesson_url(lesson, format: :json)
end
