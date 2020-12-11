class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, foreign_key: true
      t.string :Name
      t.datetime :StartTime
      t.datetime :EndTime
      t.belongs_to :employee, foreign_key: true

      t.timestamps
    end
    add_index :reservations, :user
    add_index :reservations, :employee
    add_index :reservations, :id, unique: true
  end
end
