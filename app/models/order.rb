class Order < ApplicationRecord
    
    belongs_to :clients
    belongs_to :tasks
    
    validates_date :date_of_order, on_or_before: lambda { Date.current }, on_or_before_message: "cannot be in the future"
    validates_date :due_date, after: :date_of_order, on_or_before: lambda { Date.current }, allow_blank: true
    validates_presence_of :client_id, on: :update
    validates_presence_of :task_id, on: :update
    validates_presence_of :total_price
    
    scope :current,       -> { where(due_date: nil) }
    scope :past,          -> { where.not(due_date: nil) }
    scope :chronological, -> { order('date_of_order DESC, due_date DESC') }
    scope :by_client,   -> { joins(:client).order('first_name, last_name') }
    scope :by_task,      -> { joins(:task).order('name') }
    
    
end
