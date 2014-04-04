class JobNotificationsController < ApplicationController
  # GET /job_notifications
  # GET /job_notifications.json

  before_filter :authenticate_user!, :except => [:apply]


  def index
    #@job_notifications = JobNotification.all
     @job_notifications = JobNotification.order("id").page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_notifications }
    end
  end
    # GET /job_notifications/1
  # GET /job_notifications/1.json
  def show
    @job_notification = JobNotification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_notification }
    end
  end

  # GET /job_notifications/new
  # GET /job_notifications/new.json
  def new
    @job_notification = JobNotification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_notification }
    end
  end

  # GET /job_notifications/1/edit
  # def edit
  #   @job_notification = JobNotification.find(params[:id])
  # end

  # POST /job_notifications
  # POST /job_notifications.json
  def create
    @job_notification = JobNotification.new(params[:job_notification])

    respond_to do |format|
      if @job_notification.save
        format.html { redirect_to @job_notification, notice: 'Job notification was successfully created.' }
        format.json { render json: @job_notification, status: :created, location: @job_notification }
      else
        format.html { render action: "new" }
        format.json { render json: @job_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_notifications/1
  # PUT /job_notifications/1.json
  def update
    @job_notification = JobNotification.find(params[:id])

    respond_to do |format|
      if @job_notification.update_attributes(params[:job_notification])
        format.html { redirect_to @job_notification, notice: 'Job notification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_notifications/1
  # DELETE /job_notifications/1.json
  def destroy
    @job_notification = JobNotification.find(params[:id])
    @job_notification.destroy

    respond_to do |format|
      format.html { redirect_to job_notifications_url }
      format.json { head :no_content }
    end
  end



   def apply
      @userid = current_user.id

      @job =  JobNotification.find(params[:id])
      @jobid = @job.id

    # logger.info"***first***#{@userid}"
    # logger.info"***second***#{@job}"
    # logger.info"***third***#{@jobid}"

      @appjob = ApplyJob.create(:user_id => @userid, :job_notification_id => @jobid)

      unless @appjob.valid?
        redirect_to job_notiffications_url, :alert  => "You have already applied this job"
      else
      redirect_to job_notiffications_url, :notice => "You have successfully applied for the job"
      end
  end
 

end
