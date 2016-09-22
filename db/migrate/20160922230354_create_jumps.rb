class CreateJumps < ActiveRecord::Migration
  def change
    create_table :jumps do |t|
      t.integer :number, :altitude
      t.date :date
      t.string :place, :parachute, :plane
      t.text :observations, :description
      t.integer :user_id
      t.timestamps
    end
  end
end
