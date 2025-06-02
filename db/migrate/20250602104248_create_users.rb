class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.text :user_bio

      t.timestamps
    end
  end
end
