class CreateChairsTeachers < ActiveRecord::Migration
 def self.up
    create_table :chairs_teachers, :id=>false do |t|
      t.integer :chair_id
      t.integer :teacher_id
    end
  end

  def self.down
   drop_table :chairs_teachers
  end
end
