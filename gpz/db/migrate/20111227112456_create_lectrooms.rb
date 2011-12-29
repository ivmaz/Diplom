class CreateLectrooms < ActiveRecord::Migration
  def change
    create_table :lectrooms do |t|
      t.string :number

      t.timestamps
    end
  end
end
