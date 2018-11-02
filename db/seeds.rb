Student.create!([
  {first_name: "Jake", last_name: "Jortals", email: "jjortals@hotmail.com", phone_number: "(555)555-5555", bio: "I hail from Jacksonville,FL, so yes I have always been this way because I'm from Jacksonville", linkedin_url: "Jortals", twitter_handle: "jortals jokes by jake", personal_website_url: "www.dave.uk", online_resume_url: "www.dave.uk/resume", github_url: "www.github.com/jortalsportals", photo: nil},
  {first_name: "Ashley", last_name: "Zagorski", email: "ash.zagorski@gmail.com", phone_number: "630-939-2564", bio: "A girl trying to make it in the programming world.", linkedin_url: "http://www.linkedin.com/in/ashley-zagorski/", twitter_handle: "ash_zagorski", personal_website_url: "ashzagorski.com", online_resume_url: "ashzagorski.com", github_url: "github.com/ashzagorski", photo: "https://www.allure.com/story/jennifer-aniston-beauty-regrets-sunbathing"}
])
Capstone.create!([
  {name: "Teddy Care", description: "A teddy that talks", url: "google.com", screenshot: "https://www.techadvisor.co.uk/how-to/mobile-phone/screenshot-galaxy-s9-3668590/", student_id: 2}
])
Education.create!([
  {start_date: "2018-11-01 23:31:26", end_date: "2018-11-01 23:31:26", degree: "Communication, Sciences, and Disorders", university_name: "Augustana", details: "I graduated", student_id: 2}
])
Experience.create!([
  {start_time: "2018-11-01 23:33:59", end_time: "2018-11-01 23:33:59", job_title: "Speech Therapist", company_name: "Loyola Hospital", details: "Worked with people", student_id: 2}
])
Skill.create!([
  {skill_name: "Ruby, HTML, CSS", student_id: 2}
])
