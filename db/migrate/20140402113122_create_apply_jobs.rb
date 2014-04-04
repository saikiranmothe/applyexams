class CreateApplyJobs < ActiveRecord::Migration
  def change
    create_table :apply_jobs do |t|
      t.integer :user_id
      t.integer :job_notification_id

      t.timestamps
    end
  end
end
