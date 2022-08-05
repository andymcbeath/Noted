class CreateUserScores < ActiveRecord::Migration[7.0]
  def change
    create_table :user_scores do |t|
      t.integer :user_id
      t.integer :score_id

      t.timestamps
    end
  end
end
