class CreateWebs < ActiveRecord::Migration
  def change
    create_table :webs do |t|
      t.datetime :begintime
      t.integer :lenght
      t.integer :pair
      t.integer :day

      t.timestamps
    end
  end
end
