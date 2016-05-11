json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :lesson_id, :subject, :content, :start_time, :end_time
  json.url homework_url(homework, format: :json)
end
