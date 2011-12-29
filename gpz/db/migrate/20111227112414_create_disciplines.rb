class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :reductname
      t.integer :chair_id

      t.timestamps
    end
  end
end
