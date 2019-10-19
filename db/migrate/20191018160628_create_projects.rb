class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :status, :default => 1
      t.string :name
      t.string :description
      t.integer :position
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
