class CreateActionsSubjects < ActiveRecord::Migration
  def self.up
    create_table :actions_subjects, :id=>false do |g|
      g.integer :action_id
      g.integer :subject_id
    end
  end

  def self.down
   drop_table :actions_subjects
  end
end
