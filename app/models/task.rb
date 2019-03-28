class Task < ApplicationRecord
    
    has_many :orders
    has_many :clients, through: :orders
    
end
