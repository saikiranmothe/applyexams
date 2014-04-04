class JobNotification < ActiveRecord::Base
  attr_accessible :age_limit, :company_name, :education, :exam_date, :last_date, :user_id, :vacancies
  attr_accessible :exam_image_link,:category

  #relations
  belongs_to :user

   #scope methods
   def latest_jobs
     @latest_jobs = JobsNotification.limit(5)
   end
end
