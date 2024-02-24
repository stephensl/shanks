class CreateMemberRounds < ActiveRecord::Migration[7.1]
  def change
    create_table :member_rounds do |t|
      t.references :member, null: false, foreign_key: true
      t.references :round, null: false, foreign_key: true
      t.integer :total_score

      t.timestamps
    end
  end
end
