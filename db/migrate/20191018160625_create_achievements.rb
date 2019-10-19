class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.integer :project_id
      t.integer :status, :default => 1
      t.string :name
      t.string :description
      t.string :achievement_pic
      t.integer :points

      t.timestamps
    end
  end
end
