class CreateQuestions < ActiveRecord::Migration
  def change
  	 create_table :questions do |t|
      t.string :title, { limit: 64, null: false }
      t.text :body
      t.integer :author_id, { null: false  }
      t.integer :best_answer_id 

      t.timestamps(null: false)
    end
  end
end
