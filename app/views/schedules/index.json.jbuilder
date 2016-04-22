json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :title, :description, :start_time, :end_time
  json.url schedule_url(schedule, format: :json)
end
