class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name, :nickname, :country
      t.integer :total_jumps
      t.text :biography
      t.integer :user_id
      t.timestamps
    end
  end
end
