class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.integer :status, :default => 1
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
