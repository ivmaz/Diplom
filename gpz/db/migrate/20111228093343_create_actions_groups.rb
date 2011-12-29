class CreateActionsGroups < ActiveRecord::Migration
    def self.up
    create_table :chairs_groups, :id=>false do |t|
      t.integer :chair_id
      t.integer :group_id
    end
  end

  def self.down
   drop_table :chairs_groups
  end
end
