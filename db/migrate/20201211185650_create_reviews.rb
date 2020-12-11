class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :reviews, :id, unique: true
  end
end
