class CreateChairsDisciplines < ActiveRecord::Migration
  def self.up
    create_table :chairs_disciplines, :id=>false do |d|
      t.integer :chair_id
      t.integer :discipline_id
    end
  end

  def self.down
   drop_table :chairs_disciplines
  end
end
