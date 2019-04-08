class Client < ApplicationRecord
    
    has_many :orders
    has_many :tasks, through: :orders
    
    
    validates_presence_of :first_name, :last_name, :phone, :address
    validates_format_of :phone, with: /\A\(?\d{4}\)?[-. ]?\d{4}/, message: "should be 8 digits (area code needed) and delimited with dashes only"
    
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
