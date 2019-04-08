module Contexts
  module CLientContexts
    # Context for employees 
    def create_clients
        @fatima = FactoryBot.create(:client)
    end
    
    def remove_clients
        @fatima.destroy
    end


  end
end