class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :status
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :profile_pic
      t.string :description
      t.integer :score
      t.string :auth_token
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
