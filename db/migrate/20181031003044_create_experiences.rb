class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :job_title
      t.string :company_name
      t.text :details

      t.timestamps
    end
  end
end
