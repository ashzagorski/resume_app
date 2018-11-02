class RenameColumnInStudents < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :linkedIn_URL, :linkedin_url
    rename_column :students, :personal_website_URL, :personal_website_url
    rename_column :students, :online_resume_URL, :online_resume_url
    rename_column :students, :github_URL, :github_url
  end
end
