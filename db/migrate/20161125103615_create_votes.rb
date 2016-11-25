class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.string :voteable_type
      t.integer :voteable_id

      t.timestamps(null: false)
    end
  end
end
