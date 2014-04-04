require 'test_helper'

class ApplyJobsControllerTest < ActionController::TestCase
  setup do
    @apply_job = apply_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apply_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apply_job" do
    assert_difference('ApplyJob.count') do
      post :create, apply_job: { job_notification_id: @apply_job.job_notification_id, user_id: @apply_job.user_id }
    end

    assert_redirected_to apply_job_path(assigns(:apply_job))
  end

  test "should show apply_job" do
    get :show, id: @apply_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apply_job
    assert_response :success
  end

  test "should update apply_job" do
    put :update, id: @apply_job, apply_job: { job_notification_id: @apply_job.job_notification_id, user_id: @apply_job.user_id }
    assert_redirected_to apply_job_path(assigns(:apply_job))
  end

  test "should destroy apply_job" do
    assert_difference('ApplyJob.count', -1) do
      delete :destroy, id: @apply_job
    end

    assert_redirected_to apply_jobs_path
  end
end
