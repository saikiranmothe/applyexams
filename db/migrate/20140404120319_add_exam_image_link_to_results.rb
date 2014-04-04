class AddExamImageLinkToResults < ActiveRecord::Migration
  def change
    add_column :results, :exam_image_link, :string
  end
end
