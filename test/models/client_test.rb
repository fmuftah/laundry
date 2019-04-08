require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  
  should have_many(:orders)
  should have_many(:tasks).through(:orders)
end
