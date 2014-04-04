class AddCompanyImageUrlToJobNotifications < ActiveRecord::Migration
  def change
  	  	    add_column :job_notifications, :exam_image_link, :string
  end
end
