require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save invalid' do
    user = User.new
    user.save

    refute user.valid?
  end

  test 'should save valid user' do
    user = User.new

    user.email = 'chris@gmail.com'
    user.password = '123456'

    user.save
    assert user.valid?
  end
  
end
