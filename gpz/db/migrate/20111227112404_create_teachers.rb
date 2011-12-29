
class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :pathname
      t.string :surname
      t.integer :user_id

      t.timestamps
    end
  end
end
