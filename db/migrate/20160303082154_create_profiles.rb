class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company
      t.text :bio
      t.string :industry
      t.string :expertise
      t.string :phone_number
      t.string :mobile_number
      t.string :country
      t.string :linkedin
      t.string :image
      t.string :rating

      t.timestamps null: false
    end
  end
end
