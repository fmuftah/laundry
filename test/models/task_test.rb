require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  should have_many(:orders)
  should have_many(:clients).through(:orders)
end
