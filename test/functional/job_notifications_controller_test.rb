require 'test_helper'

class JobNotificationsControllerTest < ActionController::TestCase
  setup do
    @job_notification = job_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_notification" do
    assert_difference('JobNotification.count') do
      post :create, job_notification: { age_limit: @job_notification.age_limit, company_name: @job_notification.company_name, education: @job_notification.education, exam_date: @job_notification.exam_date, last_date: @job_notification.last_date, user_id: @job_notification.user_id, vacancies: @job_notification.vacancies }
    end

    assert_redirected_to job_notification_path(assigns(:job_notification))
  end

  test "should show job_notification" do
    get :show, id: @job_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_notification
    assert_response :success
  end

  test "should update job_notification" do
    put :update, id: @job_notification, job_notification: { age_limit: @job_notification.age_limit, company_name: @job_notification.company_name, education: @job_notification.education, exam_date: @job_notification.exam_date, last_date: @job_notification.last_date, user_id: @job_notification.user_id, vacancies: @job_notification.vacancies }
    assert_redirected_to job_notification_path(assigns(:job_notification))
  end

  test "should destroy job_notification" do
    assert_difference('JobNotification.count', -1) do
      delete :destroy, id: @job_notification
    end

    assert_redirected_to job_notifications_path
  end
end
