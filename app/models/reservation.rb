class Reservation < ApplicationRecord
  validates :Name, presence:true
  validates :StartTime, presence:true
  validates :EndTime, presence:true

  belongs_to :user
  belongs_to :employee
end
