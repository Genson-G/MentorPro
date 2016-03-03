class AddImageToProfiles < ActiveRecord::Migration
  def change
  	add_column :mentors, :image, :string  	
  	add_column :mentees, :image, :string
  end
end
