class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :bio
      t.string :industry
      t.string :expertise
      t.decimal :rating
      t.string :phone_number
      t.string :country
      t.string :linkedin
      t.string :investment

      t.timestamps null: false
    end
  end
end
