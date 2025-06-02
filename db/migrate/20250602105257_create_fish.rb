class CreateFish < ActiveRecord::Migration[7.1]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :fish_description
      t.string :color
      t.string :sex
      t.float :length
      t.float :altitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.boolean :availability

      t.timestamps
    end
  end
end
