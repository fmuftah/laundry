# require needed files

require './test/sets/clients_contexts'
require './test/sets/orders_contexts'
require './test/sets/tasks_contexts'

module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::CLientContexts
  include Contexts::OrderContexts
  include Contexts::TaskContexts
  
  def create_contexts
    create_clients
    create_orders
    create_tasks
    
  end
  
  def destroy_contexts
    destroy_clients
    destroy_orders
    destroy_tasks
    
  end
  

end