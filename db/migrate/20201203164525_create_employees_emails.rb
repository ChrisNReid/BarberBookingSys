class CreateEmployeesEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :employees_emails do |t|
      t.belongs_to :Employees, foreign_key: true
      t.string :EmpEmail

      t.timestamps
    end
  end
end
