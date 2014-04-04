class AddCategoryToExamNotifications < ActiveRecord::Migration
  def change
    add_column :exam_notifications, :category, :string
  end
end
