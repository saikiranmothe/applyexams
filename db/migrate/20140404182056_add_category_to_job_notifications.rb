class AddCategoryToJobNotifications < ActiveRecord::Migration
  def change
    add_column :job_notifications, :category, :string
  end
end
