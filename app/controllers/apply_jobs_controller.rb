class ApplyJobsController < ApplicationController
  # GET /apply_jobs
  # GET /apply_jobs.json
  def index
    @apply_jobs = ApplyJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apply_jobs }
    end
  end

  # GET /apply_jobs/1
  # GET /apply_jobs/1.json
  def show
    @apply_job = ApplyJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apply_job }
    end
  end

  # GET /apply_jobs/new
  # GET /apply_jobs/new.json
  def new
    @apply_job = ApplyJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apply_job }
    end
  end

  # GET /apply_jobs/1/edit
  def edit
    @apply_job = ApplyJob.find(params[:id])
  end

  # POST /apply_jobs
  # POST /apply_jobs.json
  def create
    @apply_job = ApplyJob.new(params[:apply_job])

    respond_to do |format|
      if @apply_job.save
        format.html { redirect_to @apply_job, notice: 'Apply job was successfully created.' }
        format.json { render json: @apply_job, status: :created, location: @apply_job }
      else
        format.html { render action: "new" }
        format.json { render json: @apply_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apply_jobs/1
  # PUT /apply_jobs/1.json
  def update
    @apply_job = ApplyJob.find(params[:id])

    respond_to do |format|
      if @apply_job.update_attributes(params[:apply_job])
        format.html { redirect_to @apply_job, notice: 'Apply job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apply_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apply_jobs/1
  # DELETE /apply_jobs/1.json
  def destroy
    @apply_job = ApplyJob.find(params[:id])
    @apply_job.destroy

    respond_to do |format|
      format.html { redirect_to apply_jobs_url }
      format.json { head :no_content }
    end
  end
end
