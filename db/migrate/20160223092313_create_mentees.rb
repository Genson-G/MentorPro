class CreateMentees < ActiveRecord::Migration
  def change
    create_table :mentees do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :bio
      t.string :industry
      t.string :company
      t.decimal :rating
      t.string :phone_number
      t.string :country
      t.string :linkedin

      t.timestamps null: false
    end
  end
end
