json.array!(@mentees) do |mentee|
  json.extract! mentee, :id, :user_id, :first_name, :last_name, :email, :bio, :industry, :company, :rating, :phone_number, :country, :linkedin
  json.url mentee_url(mentee, format: :json)
end
