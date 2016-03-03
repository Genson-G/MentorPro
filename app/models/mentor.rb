class Mentor < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, MentorImageUploader
end
