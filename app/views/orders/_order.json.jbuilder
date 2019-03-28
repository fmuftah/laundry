json.extract! order, :id, :client_id, :task_id, :date_of_order, :due_date, :total_price, :created_at, :updated_at
json.url order_url(order, format: :json)
