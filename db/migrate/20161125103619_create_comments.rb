class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commenter_id
      t.string :commentable_type
      t.integer :commentable_id
      t.string :text

      t.timestamps(null: false)
    end
  end
end
