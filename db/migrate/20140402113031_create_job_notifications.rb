class CreateJobNotifications < ActiveRecord::Migration
  def change
    create_table :job_notifications do |t|
      t.string :company_name
      t.text :vacancies
      t.date :last_date
      t.date :exam_date
      t.string :age_limit
      t.text :education
      t.integer :user_id

      t.timestamps
    end
  end
end
