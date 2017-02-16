require 'test_helper'

class KegTest < ActiveSupport::TestCase
   test "should not save keg without brand" do
     keg = Keg.new
     assert_not keg.save
   end
end
