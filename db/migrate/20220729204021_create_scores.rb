class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :title
      t.string :composer
      t.string :image_file

      t.timestamps
    end
  end
end
