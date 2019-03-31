# require needed files

require './test/sets/client_contexts'
require './test/sets/order_contexts'
require './test/sets/task_contexts'

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