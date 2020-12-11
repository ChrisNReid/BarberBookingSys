class AddIndexToBookings < ActiveRecord::Migration[5.2]
  def change
    add_index :bookings, :title, unique:true
  end
end
