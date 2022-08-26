class AddScoreToScores < ActiveRecord::Migration[7.0]
  def change
    rename_column :scores, :image_file, :score
  end
end
