require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = users(:one)
  end

  test 'should not save empty review' do
    review = Review.new

    review.save
    refute review.valid?
  end

  test 'should save valid task' do
    review = Review.new

    review.title = 'My review'
    review.description = 'My description'
    review.user = @user

    review.save
    assert review.valid?
  end
end
