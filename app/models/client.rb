class Client < ApplicationRecord
    
    has_many :orders
    has_many :tasks, through: :orders
    
    
    validates_presence_of :first_name, :last_name, :phone, :address
end
