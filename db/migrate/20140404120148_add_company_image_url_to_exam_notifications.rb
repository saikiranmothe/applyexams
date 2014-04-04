class AddCompanyImageUrlToExamNotifications < ActiveRecord::Migration
  def change
  	    add_column :exam_notifications, :exam_image_link, :string
  end
end
