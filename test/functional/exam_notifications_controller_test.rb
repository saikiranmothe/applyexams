require 'test_helper'

class ExamNotificationsControllerTest < ActionController::TestCase
  setup do
    @exam_notification = exam_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_notification" do
    assert_difference('ExamNotification.count') do
      post :create, exam_notification: { age_limit: @exam_notification.age_limit, company_name: @exam_notification.company_name, education: @exam_notification.education, exam_date: @exam_notification.exam_date, last_date: @exam_notification.last_date, name: @exam_notification.name, user_id: @exam_notification.user_id }
    end

    assert_redirected_to exam_notification_path(assigns(:exam_notification))
  end

  test "should show exam_notification" do
    get :show, id: @exam_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_notification
    assert_response :success
  end

  test "should update exam_notification" do
    put :update, id: @exam_notification, exam_notification: { age_limit: @exam_notification.age_limit, company_name: @exam_notification.company_name, education: @exam_notification.education, exam_date: @exam_notification.exam_date, last_date: @exam_notification.last_date, name: @exam_notification.name, user_id: @exam_notification.user_id }
    assert_redirected_to exam_notification_path(assigns(:exam_notification))
  end

  test "should destroy exam_notification" do
    assert_difference('ExamNotification.count', -1) do
      delete :destroy, id: @exam_notification
    end

    assert_redirected_to exam_notifications_path
  end
end
