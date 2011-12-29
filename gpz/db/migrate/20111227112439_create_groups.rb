class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :number
      t.integer :chair_id

      t.timestamps
    end
  end
end
