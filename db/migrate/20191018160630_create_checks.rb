class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.integer :status
      t.string :title
      t.string :answer
      t.integer :position
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
