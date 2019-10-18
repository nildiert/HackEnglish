class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.integer :status
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
