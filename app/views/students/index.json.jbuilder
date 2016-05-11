json.array!(@students) do |student|
  json.extract! student, :id, :name, :age, :degree
  json.url student_url(student, format: :json)
end
