class CreateCheckTaskAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :check_task_assignments do |t|
      t.datetime :finished_at
      t.integer :finished
      t.references :task_assignment, foreign_key: true
      t.references :check, foreign_key: true

      t.timestamps
    end
  end
end
