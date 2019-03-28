class Client < ApplicationRecord
    
    has_many :orders
    has_many :tasks, through: :orders
    
end
