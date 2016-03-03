json.array!(@mentors) do |mentor|
  json.extract! mentor, :id, :user_id, :first_name, :last_name, :email, :bio, :industry, :expertise, :rating, :phone_number, :country, :linkedin, :investment
  json.url mentor_url(mentor, format: :json)
end
