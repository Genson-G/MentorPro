json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :first_name, :last_name, :email, :company, :bio, :industry, :expertise, :phone_number, :mobile_number, :country, :linkedin, :image, :rating
  json.url profile_url(profile, format: :json)
end
