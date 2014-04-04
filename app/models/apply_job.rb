class ApplyJob < ActiveRecord::Base
  attr_accessible :job_notification_id, :user_id

  validates_uniqueness_of :job_notiffication_id, :scope => :user_id

end
