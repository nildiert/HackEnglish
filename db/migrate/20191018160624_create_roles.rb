class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :title
      t.integer :status, :default => 1

      t.timestamps
    end
  end
end
