json.extract! task, :id, :name, :cleaning_type, :cost, :created_at, :updated_at
json.url task_url(task, format: :json)
