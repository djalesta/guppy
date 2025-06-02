class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.datetime :created_date
      t.references :fish, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
