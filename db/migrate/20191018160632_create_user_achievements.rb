class CreateUserAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :user_achievements do |t|
      t.references :user, foreign_key: true
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
