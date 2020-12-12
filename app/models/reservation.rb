class Reservation < ApplicationRecord
  validates :Name, presence:true
  validates :StartTime, presence:true
  validates :EndTime, presence:true

  belongs_to :user
  belongs_to :employee

  scope :user_reservations, ->(user) { where(['user_id= ?', user.id]) }
end
