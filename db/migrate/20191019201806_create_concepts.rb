class CreateConcepts < ActiveRecord::Migration[5.2]
  def change
    create_table :concepts do |t|
      t.integer :status, :default => 1
      t.string :title
      t.string :link
      t.integer :position
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
