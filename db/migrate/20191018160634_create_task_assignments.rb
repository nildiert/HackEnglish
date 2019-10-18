class CreateTaskAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :task_assignments do |t|
      t.datetime :finished_at
      t.integer :finished
      t.references :user_project, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
