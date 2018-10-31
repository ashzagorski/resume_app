class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :bio
      t.string :linkedIn_URL
      t.string :twitter_handle
      t.string :personal_website_URL
      t.string :online_resume_URL
      t.string :github_URL
      t.string :photo

      t.timestamps
    end
  end
end
