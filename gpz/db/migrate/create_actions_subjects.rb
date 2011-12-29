class CreateActionsSubjects < ActiveRecord::Migration
  def self.up
    create_table :actions_subjects, :id=>false do |g|
      t.integer :action_id
      t.integer :subject_id
    end
  end

  def self.down
   drop_table :actions_subjects
  end
end
