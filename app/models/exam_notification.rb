class ExamNotification < ActiveRecord::Base
  attr_accessible :age_limit, :company_name, :education, :exam_date, :last_date, :name, :user_id
  attr_accessible :exam_image_link,:category

  #relations
  belongs_to :user


   def latest_exams
     @latest_exams = ExamNotification.limit(5)
   end
   

   def mba_exams
    	@category_exams =  ExamNotification.find_by_category("MBA")
   end

end
