class CreateConcepts < ActiveRecord::Migration[5.2]
  def change
    create_table :concepts do |t|
      t.integer :status
      t.string :title
      t.string :link
      t.integer :position

      t.timestamps
    end
  end
end
