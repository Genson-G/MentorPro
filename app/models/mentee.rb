class Mentee < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, MenteeImageUploader
end
