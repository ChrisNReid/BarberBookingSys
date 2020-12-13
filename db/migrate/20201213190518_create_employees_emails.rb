class CreateEmployeesEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :employees_emails do |t|
      t.belongs_to :employee, foreign_key: true
      t.string :email

      t.timestamps
    end
    add_index :employees_emails, :email, unique: true
  end
end
