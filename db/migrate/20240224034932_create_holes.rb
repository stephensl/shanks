class CreateHoles < ActiveRecord::Migration[7.1]
  def change
    create_table :holes do |t|
      t.references :course, null: false, foreign_key: true
      t.integer :number
      t.integer :par
      t.integer :distance

      t.timestamps
    end
  end
end
