class Client < ApplicationRecord
    
    has_many :orders
    has_many :tasks, through: :orders
    
    
    validates_presence_of :first_name, :last_name, :phone, :address
    validates_format_of :phone, with: /\d{8}/, message: "should be 8 digits"
    
    scope :alphabetical, -> { order('name') }
    
    def name
         "#{first_name}, #{last_name}"
    end
    
    def current_order
        curr_order = self.orders.select{|a| a.due_date.nil?}
        return nil if curr_order.empty?
        curr_order.first   # return as a single object, not an array
    end
    
    

end
