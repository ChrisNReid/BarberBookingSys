class Employee < ApplicationRecord
  validates :FirstName, presence:true
  validates :LastName, presence:true
  validates :PhoneNumber, presence:true

  has_many :reservation, dependent: :nullify
  has_many :employees_email, dependent: :nullify
end
