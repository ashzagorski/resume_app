json.id student.id 
json.first student.first_name
json.last student.last_name
json.email student.email
json.phone student.phone_number
json.bio student.bio
json.link student.linkedin_url
json.twitter student.twitter_handle
json.website student.personal_website_url
json.resume student.online_resume_url
json.github student.github_url
json.photo student.photo


json.educations do
  json.array! student.educations, partial: 'api/educations/education', as: :education
end



json.experiences do
  json.array! student.experiences, partial: "api/experiences/experience", as: :experience
end

json.capstones do
  json.array! student.capstones, partial: "api/capstones/capstone", as: :capstone
end

json.skills do
  json.array! student.skills, partial: "api/skills/skill", as: :skill
end