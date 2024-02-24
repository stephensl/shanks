class CreateHoleScores < ActiveRecord::Migration[7.1]
  def change
    create_table :hole_scores do |t|
      t.references :member_round, null: false, foreign_key: true
      t.references :hole, null: false, foreign_key: true
      t.integer :strokes

      t.timestamps
    end
  end
end
