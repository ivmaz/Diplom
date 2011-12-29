class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :chair_id
      t.integer :discipline_id
      t.integer :teacher_id
      t.integer :group_id

      t.timestamps
    end
  end
end
