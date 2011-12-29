class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :web_id
      t.integer :lectroom_id
      t.integer :type_id
      t.integer :subject_id
      t.date :from
      t.date :to
      t.boolean :week

      t.timestamps
    end
  end
end
