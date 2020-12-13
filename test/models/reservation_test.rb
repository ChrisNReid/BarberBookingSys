require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @reservation = reservations(:one)
    @employee = employees(:one)
    @user = users(:one)
  end

  test 'should not save empty reservation' do
    reservation = Reservation.new

    reservation.save
    refute reservation.valid?
  end

  test 'should save valid reservation' do
    reservation = Reservation.new

    reservation.user = reservation.user_id
    reservation.Name = 'Chris'
    reservation.StartTime ='2020-12-11 19:06:35'
    reservation.EndTime = '2020-12-11 19:06:35'
    reservation.employee = reservation.employee_id
    reservation.employee = @employee
    reservation.user = @user

    reservation.save
    assert reservation.valid?
  end


end
